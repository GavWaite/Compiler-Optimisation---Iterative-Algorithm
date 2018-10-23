# Gavin Waite
# 2018

#run_benchmark.py
import subprocess
import os
import numpy
import matplotlib.pyplot as plt
from gcc_options import new_new_list, try_again
import random
import json
import datetime
import math
from operator import itemgetter

s_benchmark = "401.bzip2"
s_benchmarks = [
    "401.bzip2",
    "429.mcf",
    "433.milc",
    "445.gobmk",
    "456.hmmer",
    "458.sjeng",
    "462.libquantum",
    "464.h264ref",
    "470.lbm",
    "h263dec",
    "h263enc",
    "mpeg2dec",
    "mpeg2enc"
    ]
s_benchmarks2 = [
    "401.bzip2",
    "429.mcf",
    "433.milc",
    "445.gobmk",
    "456.hmmer",
    "458.sjeng",
    "462.libquantum",
    "464.h264ref",
    "470.lbm",
    # "h263dec",
    "h263enc",
    "mpeg2dec",
    "mpeg2enc"
    ]
s_opts = ["-O0", "-O1", "-O2", "-O3"]
basic_opts = ["-O0", "-O1", "-O2", "-O3"]

option_scores = {} # Is used to save the scores assigned to each of the available option flags
o1_bench_outs = {}

target_score = 56400

# How many runs to do for each benchmark?
min_iterations = 10
max_iterations = 100
max_confidence_interval_in_median = 100

# When should the benchmark stop?
confidence_percentage = 0.5 # set back to 0.05 later on
confidence_absolute = 20

damping_factor = 0.25

max_number_of_flags = 50 # number of flags per set

# Logging to terminal file
def log(msg):
    time = datetime.datetime.now()
    print("<"+str(time)+">: " + msg)

# Create output file in temp directory
def init():
    log("Beginning")
    option_scores = load_scores('option_scores.json')
    o1_bench_outs = load_scores('o1_bench_outputs.json')

    for bench in s_benchmarks:
        time = datetime.datetime.now()
        localfilename = "./results/benchmarks/" + str(bench) + ".txt"
        localfile = open(localfilename, 'a')
        localfile.write("\nRun beginning at " + str(time) + "\n")
        localfile.close()
    
def load_scores(file):
    # log("Loading scores json data")
    with open(file, 'r') as mem:
        scores = json.load(mem)
        return scores

def save_scores(scores, file):
    with open(file, 'w') as mem:
        json.dump(scores, mem, indent=4)

# function to run and time a unix function
def run_and_time(bench=s_benchmark):
    root = os.getcwd()
    os.chdir("./coptbenchmarks2013/"+bench)
    func = ["time", "./run.sh"]

    #stdout, stderr, status = Open3.capture3("time #{unix_command} 2> /dev/null")
    result = subprocess.run("time ./run.sh 2> /dev/null", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    #result = subprocess.check_output(func)
    #log( "stdout = " + result.stdout.decode('utf-8'))
    #log( "stderr = " + result.stderr.decode('utf-8'))
    os.chdir(root)

    output = result.stdout.decode('utf-8')
    valid = check_output_for_correctness(bench, output)
    

    timing = {}
    times = result.stderr.decode('utf-8')
    for line in times.splitlines()[1:4]:
        (name,value) = line.split("\t")
        # log("name " + name)
        # log("value " + value)
        (s_minutes,s_seconds) = value.split("m")
        # log("minutes " + s_minutes)
        # log("seconds " + s_seconds)
        minutes = float(s_minutes)
        seconds = float(s_seconds.strip("s"))
        # log("minutes " + str(minutes))
        # log("seconds " + str(seconds))
        milliseconds = (minutes * 60 * 1000) + (seconds * 1000)
        # log("milliseconds " + str(milliseconds))
        timing[name] = milliseconds
    
    # log("real is " + str(timing))
    # compute_time = timing["user"] + timing["sys"]
    compute_time = timing["real"]
    
    if valid == False:
        log("RUN ERROR with " + str(bench))
        compute_time = 99999

    return int(compute_time)

# function to compile the benchmark with given option
def compile_program(opt, bench=s_benchmark):
    # log("Compiling " +bench+ " with option set: "+opt)
    # need to cd into coptbenchmarks2013/{SPEC}/src
    # then run make
    root = os.getcwd()
    os.chdir("./coptbenchmarks2013/"+bench+"/src")
    # result = subprocess.run("pwd")
    subprocess.run(["make", "clean"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    #print(result)
    argus = "CFLAGS=" + opt
    result = subprocess.run(["make", argus], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    #result = subprocess.run(["make", argus])
    # log("compile_result = " + str(result))
    os.chdir(root)
    # if result.returncode == 0:
    #     print("Compilation success")
    # else:
    #     print("Compilation failure")
    return result.returncode

# function to run the time function 10+ times until stable
def run_until_stable(min_iters=min_iterations, bench=s_benchmark):
    i = 0
    stable = 0
    average = 0
    std = 0
    # prev_average = 0
    median = 0
    ci = 0
    ci_upper = 0
    ci_lower = 0
    runtimes = []

    # log("Running benchmark " + str(bench))
    while (i < min_iters or stable == 0):
        i += 1
        # print(i, end=' ', flush=True)

        # log("Running iteration: " + str(i))
        time = run_and_time(bench)
        runtimes.append(time)

        if len(runtimes) > 9:
            average = numpy.mean(runtimes)
            std = numpy.std(runtimes)
            # if std < confidence_percentage*average:
            #     stable = 1
            # elif i > max_iterations:
            #     stable = 1
            # else:
            #     stable = 0
            # log("avg = " + str(average) + "   std = " + str(std))
            median, ci, ci_lower, ci_upper = compute_95confidence_interval(runtimes)

            target_ci = median * 0.03

            if ci < target_ci:
                stable = 1
            elif i > max_iterations:
                stable = 1
            else:
                stable = 0
                # print(ci, end=' ', flush=True)
        
        localfilename = "./results/" + str(bench) + ".txt"
        localfile = open(localfilename, 'a')
        if time == 99999:
            localfile.write("ERR" + " ")
        else:
            localfile.write(str(time) + " ")
        localfile.close()
    # print(" ")
    return (average, std, median, ci, ci_lower, ci_upper)

# function to iterate through the chosen option sets
def run_all_options():
    # Open the file for that benchmark
    filename = "./results/benchmark_" + s_benchmark + "_results.txt"
    file = open(filename, 'w')

    file.write(s_benchmark + "\n")
    
    for opt in s_opts:
        file.write("\"" + opt + "\"\t")
        log("Running option set: " + opt)
        retcode = compile_program(opt)
        if retcode == 0:
            run_until_stable(file)
            file.write("\n")
        else:
            file.write("Compilation error\n")

    file.close()

def generate_random_set():
    number_of_specific_flags = random.randint(2, max_number_of_flags)
    option_numbers = random.sample(range(len(list_others)), number_of_specific_flags)
    chosen_set = []
    for opt in option_numbers:
        chosen_set.append(list_others[opt])

    string_opt = chosen_set[0]
    for opt in chosen_set[1:-1]:
        string_opt += (" " + opt)
    string_opt += " -O3"
    return string_opt

def find_sets(n):
    filename = "./results/setfinder_" + s_benchmark + "_results.txt"
    file = open(filename, 'w')
    file.write(s_benchmark + "\n")

    compile_program("-O3")
    o3_time = run_until_stable(file)

    log("With -O3, the time was " +str(o3_time))

    sets = 0
    while (sets < n):
        
        opt = generate_random_set()
        log("Running option set: " + opt)
        returncode = compile_program(opt)
        if returncode == 0:
            time = run_until_stable(file)
            log("Average time is " + str(time))
            if time < o3_time:
                file.write("\"" + opt + "\"\t")
                file.write(str(time))
                file.write("\n")
                sets += 1
        else:
            log("Compilation error")

def check_opts():
    filename = "./results/new_all_opts_" + "try_again" + "_results.txt"
    file = open(filename, 'w')
    file.write(s_benchmark + "\n")

    o3_total_time = 0
    file.write("\"" + "-O3" + "\"\n")
    file.close()
    for bench in s_benchmarks:
        compile_program("-O3", bench)

        localfilename = "./results/benchmarks/" + str(bench) + ".txt"
        localfile = open(localfilename, 'a')
        localfile.write("-O3" + "\t")
        localfile.close()

        (o3_time, o3_std) = run_until_stable(file, 10, bench)

        localfile = open(localfilename, 'a')
        localfile.write("\n")
        localfile.close()

        file = open(filename, 'a')
        file.write(str(o3_time) + " ")
        file.close()
        o3_total_time += o3_time

    log("With -O3, the total time was " +str(o3_total_time))
    file = open(filename, 'a')
    file.write("TOTAL(AVG) = " + str(o3_total_time))
    file.write("\n")
    file.close()

    i = 0
    for option in try_again:
        i += 1
        log("On option " + str(i) + "/" + str(len(s_opts)))
        file = open(filename, 'a')
        opt = "-O3 " + option
        log("Running option set: " + opt)
        file.write("\"" + option + "\"\n")
        file.close()

        opt_total_time = 0
        for bench in s_benchmarks:
            returncode = compile_program(opt, bench)

            localfilename = "./results/benchmarks/" + str(bench) + ".txt"
            localfile = open(localfilename, 'a')
            localfile.write("\"" + str(option) + "\"" + "\t")
            localfile.close()

            file = open(filename, 'a')
            if returncode == 0:
                time, std = run_until_stable(file, 10, bench)
                # log("Average time is " + str(time))
                file.write(str(time) + " ")
                # if time < o3_time:
                #     file.write(" !!! -" + str(o3_time - time))
                opt_total_time += time
            else:
                file.write("ERROR ")
                opt_total_time += 100000
            file.close()

            localfile = open(localfilename, 'a')
            localfile.write("\n")
            localfile.close()

        log("The total time was " +str(opt_total_time))
        
        file = open(filename, 'a')
        file.write("TOTAL(AVG) = " + str(opt_total_time))
        if opt_total_time < o3_total_time:
            file.write(" !!! -" + str(o3_total_time-opt_total_time))
        else:
            file.write(" +" + str(opt_total_time-o3_total_time))
        file.write("\n")

        file.close()

def check_basic_opts():
    filename = "./results/v2_basic_opts_" + str(min_iterations) + "_results.txt"
    file = open(filename, 'w')
    file.write("Basic -o tests" + "\n")
    file.close()
    
    log("Testing the basic -o flags")
    i = 0
    total_time = [0,0,0,0]
    for bench in s_benchmarks:
        i += 1
        log("Benchmark " + bench + ": " + str(i) + " of " + str(len(s_benchmarks)))
        file = open(filename, 'a')
        file.write(bench + "\n")
        file.close()

        o = 0
        for opt in basic_opts:
            o += 1
            log("On option " + opt + ": " + str(o) + " of " + str(len(basic_opts)))
            file = open(filename, 'a')
            file.write("\"" + opt + "\"\t")
            file.close()

            returncode = compile_program(opt, bench)
            log("Compiled")
            file = open(filename, 'a')
            if returncode == 0:
                (avg, std) = run_until_stable(file, min_iterations, bench)
                file.write(" AVG " + str(avg) + " STD " + str(std))
                total_time[(o-1)] += avg
            else:
                file.write("ERROR ")
                total_time[(o-1)] += 1000000
            file.write("\n")
            file.close()
    
    file = open(filename, 'a')
    file.write("\Totals: " + str(total_time))
    file.close()
        
# Can be called with update_benchmark_score("overall", flags, delta) to do the overall scores
def update_benchmark_score(benchmark, flags, delta):

    # Load the correct file
    score_file = "./scores/" + str(benchmark) + ".json"
    scores = load_scores(score_file)

    # For all flags involved, update the score value
    # If flag is new then add it with an average value
    for flag in flags:
        if flag in scores:
            prev_score = scores[flag]
            scores[flag] = prev_score + delta
        else:
            current_average = find_average_score(scores)
            scores[flag] = current_average + delta
    
    # Sort the scores before re-saving them
    scores = sorted(scores.items(), key=itemgetter(1), reverse=True)
    save_scores(scores, score_file)

def basic_flags():
    
    for flag in basic_opts:

        log("basic_flags(): " + str(flag))

        t_mean   = 0
        t_median = 0

        for bench in s_benchmarks:  

            log("basic_flags(): " + str(flag) + " - " + str(bench))

            success = compile_program(flag, bench)
            
            if success is not 0:
                log("Compilation error with flag set " + str(flag) + " on benchmark " + str(bench))

            raw_filename = "./results/" + str(bench) + ".txt"
            raw_file = open(raw_filename, 'a')
            raw_file.write("\n\"" + str(flag) + "\"\t")
            raw_file.close()
            
            # Actually run the simulations
            average, std, median, ci, ci_lower, ci_upper = run_until_stable(10, bench)

            # Record the local stats
            stats_file = "./stats/" + str(bench) + ".json"
            benchmark_stats = load_scores(stats_file)
            benchmark_stats[flag] = [average, std, median, ci, ci_lower, ci_upper]
            save_scores(benchmark_stats, stats_file)

            # Update the sorted stats list (by median)
            sorted_stats = sorted(benchmark_stats.items(), key=lambda s: s[1][2])
            sorted_file = "./stats/sorted/" + str(bench) + ".json"
            save_scores(sorted_stats, sorted_file)

            t_mean           += average
            t_median         += median
        
        # Record the global stats
        stats_file = "./stats/" + "overall" + ".json"
        benchmark_stats = load_scores(stats_file)
        benchmark_stats[flag] = [t_mean, t_median]
        save_scores(benchmark_stats, stats_file)

        # Update the sorted global stats
        sorted_stats = sorted(benchmark_stats.items(), key=lambda s: s[1][1])
        sorted_file = "./stats/sorted/" + "overall" + ".json"
        save_scores(sorted_stats, sorted_file)


def populate_score_lists():
    # Iterate through the list of flags and populate the individual score lists
    for flag in new_new_list:
        
        # Reset the total stats for the "overall" benchmark
        t_mean   = 0
        t_median = 0

        s_flag = "-O3 " + flag

        # Iterate through each benchmark with the selected flag
        for bench in s_benchmarks:  
            
            log("populate_score_lists(): " + str(s_flag) + " - " + str(bench))
            
            # Compile the program
            success = compile_program(s_flag, bench)
            if success is not 0:
                log("Compilation error with flag set " + str(s_flag) + " on benchmark " + str(bench))

            # Setup the raw file to store the raw results
            raw_filename = "./results/" + str(bench) + ".txt"
            raw_file = open(raw_filename, 'a')
            raw_file.write("\n\"" + str(s_flag) + "\"\t")
            raw_file.close()
            
            # Actually run the simulations
            average, std, median, ci, ci_lower, ci_upper = run_until_stable(10, bench)

            # Record the local stats
            stats_file = "./stats/" + str(bench) + ".json"
            benchmark_stats = load_scores(stats_file)
            benchmark_stats[flag] = [average, std, median, ci, ci_lower, ci_upper]
            save_scores(benchmark_stats, stats_file)

            # Update the sorted stats list (by median)
            sorted_stats = sorted(benchmark_stats.items(), key=lambda s: s[1][2])
            sorted_file = "./stats/sorted/" + str(bench) + ".json"
            save_scores(sorted_stats, sorted_file)

            t_mean           += average
            t_median         += median

            # Compute the score for that benchmark
            score = 0
            target_time_min = benchmark_stats["-O3"][4]  # This is the lower bound of the confidence interval
            target_time_max = benchmark_stats["-O3"][5]  # This is the upper bound of the confidence interval
            if median < target_time_min:
                score = target_time_min - median
            elif median > target_time_max:
                score = target_time_max - median
            else:
                score = 0

            # Save the score for that benchmark
            benchmark_scores_file = './scores/' + str(bench) + '.json'
            benchmark_scores = load_scores(benchmark_scores_file)
            benchmark_scores[flag] = score
            save_scores(benchmark_scores, benchmark_scores_file)
        # All benchmarks run
        
        # Record the global stats
        stats_file = "./stats/" + "overall" + ".json"
        benchmark_stats = load_scores(stats_file)
        benchmark_stats[flag] = [t_mean, t_median]
        save_scores(benchmark_stats, stats_file)

        # Update the sorted global stats
        sorted_stats = sorted(benchmark_stats.items(), key=lambda s: s[1][1])
        sorted_file = "./stats/sorted/" + "overall" + ".json"
        save_scores(sorted_stats, sorted_file)

        # Compute the overall score
        t_score = 0
        target_time = benchmark_stats["-O3"][1]  # This is the median
        if t_median < target_time:
            t_score = target_time - t_median
        elif median > target_time:
            t_score = target_time - t_median
        else:
            t_score = 0

        log("Score for " + str(s_flag) + " was " + str(t_score))

        # Save the overall score
        benchmark_scores_file = './scores/' + "overall" + '.json'
        benchmark_scores = load_scores(benchmark_scores_file)
        benchmark_scores[flag] = t_score
        save_scores(benchmark_scores, benchmark_scores_file)
    # Next flag in the list


def incremental_improvement(target_benchmark, n):
    # To be run as many times as possible
    for i in range(0,n):

        # First need to generate a set of flags from the target benchmark
        target_score_file = './scores/' + str(target_benchmark) + '.json'
        target_scores = load_scores(target_score_file)

        flags = list(target_scores.keys())
        score_list = list(target_scores.values())

        # Define the probabilities based upon scores for target benchmark
        min_weight = 1000000
        for score in score_list:
            if score < min_weight:
                min_weight = score
        total_weight = 0        
        positive_weights = []
        for score in score_list:
            positive_weights.append(score - min_weight)
            total_weight += (score - min_weight)
        p_weights = []
        for weight in positive_weights:
            p_weights.append(weight / total_weight)
        
        # Choose a set of flags from the target bag
        number_of_specific_flags = random.randint(2, max_number_of_flags)
        new_set = 0
        while new_set == 0:
            chosen_flags = numpy.random.choice(flags, number_of_specific_flags, p=p_weights, replace=False)
            
            string_flags = chosen_flags[0]
            for flag in chosen_flags[1:-1]:
                string_flags += (" " + flag)
            string_flags = "-O3 " + string_flags
            
            completed_runs_file = './stats/' + "overall" + '.json'
            completed_runs = load_scores(completed_runs_file)
            
            if string_flags in completed_runs:
                new_set = 0
            else:
                new_set = 1

        # Now have the chosen set for the test run - recreate the CFLAGS string
        string_flags = chosen_flags[0]
        for flag in chosen_flags[1:-1]:
            string_flags += (" " + flag)
        string_flags = "-O3 " + string_flags

        log("Chosen flags for run " + str(i+1) + " are " +str(string_flags))

        # Now run all benchmarks with that chosen flag set
        t_mean   = 0
        t_median = 0

        failed_flags = 0

        for bench in s_benchmarks:
            if failed_flags == 0:
                log("incremental_improvement(" + str(target_benchmark) + "): " + str(i+1) + "/" + str(n) + " - " + str(bench))

                success = compile_program(string_flags, bench)
                
                if success is not 0:
                    log("Compilation error with flag set " + str(string_flags) + " on benchmark " + str(bench))
                    failed_flags = 1
                else:
                    # Setup the raw fle for writing
                    raw_filename = "./results/" + str(bench) + ".txt"
                    raw_file = open(raw_filename, 'a')
                    raw_file.write("\n\"" + str(string_flags) + "\"\t")
                    raw_file.close()
                    
                    # Actually run the simulations
                    average, std, median, ci, ci_lower, ci_upper = run_until_stable(10, bench)

                    # Record the local stats
                    stats_file = "./stats/" + str(bench) + ".json"
                    benchmark_stats = load_scores(stats_file)
                    benchmark_stats[string_flags] = [average, std, median, ci, ci_lower, ci_upper]
                    save_scores(benchmark_stats, stats_file)

                    # Update the sorted stats list (by median)
                    sorted_stats = sorted(benchmark_stats.items(), key=lambda s: s[1][2])
                    sorted_file = "./stats/sorted/" + str(bench) + ".json"
                    save_scores(sorted_stats, sorted_file)

                    t_mean           += average
                    t_median         += median

                    # Compute the delta for that benchmark
                    delta = 0
                    target_time_min = benchmark_stats["-O3"][4]  # This is the lower bound of the confidence interval
                    target_time_max = benchmark_stats["-O3"][5]  # This is the upper bound of the confidence interval
                    if median < target_time_min:
                        delta = target_time_min - median
                    elif median > target_time_max:
                        delta = target_time_max - median
                    else:
                        delta = 0
                    delta = delta * damping_factor
                    
                    # Save the scores for that benchmark
                    benchmark_scores_file = './scores/' + str(bench) + '.json'
                    benchmark_scores = load_scores(benchmark_scores_file)
                    for flag in chosen_flags:
                        benchmark_scores[flag] = benchmark_scores[flag] + delta
                    save_scores(benchmark_scores, benchmark_scores_file)

                    # Update the sorted scores for that benchmark
                    sorted_scores = sorted(benchmark_scores.items(), key=itemgetter(1), reverse=True)
                    sorted_scores_file = "./scores/sorted/" + str(bench) + ".json"
                    save_scores(sorted_scores, sorted_scores_file)
        # All benchmarks done
        if failed_flags == 0:
            # Record the global stats
            stats_file = "./stats/" + "overall" + ".json"
            benchmark_stats = load_scores(stats_file)
            benchmark_stats[string_flags] = [t_mean, t_median]
            save_scores(benchmark_stats, stats_file)

            # Update the sorted global stats
            sorted_stats = sorted(benchmark_stats.items(), key=lambda s: s[1][1])
            sorted_file = "./stats/sorted/" + "overall" + ".json"
            save_scores(sorted_stats, sorted_file)

            # Compute the overall delta
            t_delta = 0
            target_time = benchmark_stats["-O3"][1]  # This is the median
            if t_median < target_time:
                t_delta = target_time - t_median
            elif t_median > target_time:
                t_delta = target_time - t_median
            else:
                t_delta = 0
            t_delta = t_delta * damping_factor

            # Save the overall scores
            benchmark_scores_file = './scores/' + "overall" + '.json'
            benchmark_scores = load_scores(benchmark_scores_file)
            for flag in chosen_flags:
                benchmark_scores[flag] = benchmark_scores[flag] + t_delta
            save_scores(benchmark_scores, benchmark_scores_file)

            # Update the sorted scores for that benchmark
            sorted_scores = sorted(benchmark_scores.items(), key=itemgetter(1), reverse=True)
            sorted_scores_file = "./scores/sorted/" + "overall" + ".json"
            save_scores(sorted_scores, sorted_scores_file)

    # End of each 'generation'
            
def find_average_score(flags):
    total_score = 0
    for flag, scores in flags.items():
        total_score += scores[-1]

    num_flags = len(flags)

    return int(total_score/num_flags)

def genetic_improvements(n):
    filename = "./results/genetic_test_run_" + str(7) + "_results.txt"
    file = open(filename, 'w')
    file.write("Genetic Tests for " + str(n) + " iterations"+ "\n")
    file.close()

    for run in range(0,n):
        log("GEN: Iteration " + str(run+1) + " of " + str(n))
        file = open(filename, 'a')
        file.write("Iteration " + str(run) + "\n")
        file.close()

        scores = load_scores('option_scores.json')
        flags = list(scores.keys())

        # Get the weight history for each flag and then create a list of the most recent values
        weights = []
        weight_history = list(scores.values())
        min_weight = 0
        for history in weight_history:
            weights.append(history[-1])
            if history[-1] < min_weight:
                min_weight = history[-1]
        total_weight = 0        
        positive_weights = []
        for weight in weights:
            positive_weights.append(weight - min_weight)
            total_weight += (weight - min_weight)
        # log(str(positive_weights))
        p_weights = []
        for weight in positive_weights:
            p_weights.append(weight / total_weight)
        
        
        number_of_specific_flags = random.randint(2, max_number_of_flags)

        chosen_flags = numpy.random.choice(flags, number_of_specific_flags, p=p_weights, replace=False)

        # Now have the chosen set for the test run
        string_flags = chosen_flags[0]
        for flag in chosen_flags[1:-1]:
            string_flags += (" " + flag)
        string_flags = "-O3 " + string_flags

        file = open(filename, 'a')
        file.write("\"" + string_flags + "\"\t")
        file.close()

        # Compile and run each benchmark
        i = 0
        total_time = 0
        error = 0
        for bench in s_benchmarks:
            i += 1
            log("Benchmark " + str(i))
            returncode = compile_program(string_flags, bench)
            file = open(filename, 'a')
            if returncode == 0:
                (avg, std) = run_until_stable(file, min_iterations, bench)
                file.write(str(avg) + " ")
                total_time += int(avg)
            else:
                file.write("COMPILE ERROR ")
                error = 1
                break
            file.close()

        if error == 1:
            continue

        result = int((target_score - total_time) * damping_factor)

        log("Result was " + str(result) + " after a time of " + str(total_time))
        file = open(filename, 'a')
        file.write("\"" + str(total_time) + "\"\n")
        file.close()

        new_scores = {}
        for flag, vals in scores.items():
            latest_scores = vals
            updated_score = 0
            if flag in chosen_flags:
                # log(str(flag) + " was found as a chosen flag")
                updated_score = latest_scores[-1] + result  
            else:
                updated_score = latest_scores[-1]
            latest_scores.append(updated_score)
            new_scores[flag] = latest_scores

        save_scores(new_scores, 'option_scores.json')

        allresname = "./results/all_final_genetic_test_results.txt"
        file = open(allresname, 'a')
        file.write(str(total_time) + "\t" + str(chosen_flags) + "\n\n")
        file.close() 

        show_sorted_list_of_flags()


def save_correct_outputs():

    new_o1_bench_outputs = {}

    for bench in s_benchmarks:
        # For each benchmark, compile it with O1 then save the results to the JSON
        compile_okay = compile_program("-O0", bench)

        if compile_okay == 0:
            root = os.getcwd()
            os.chdir("./coptbenchmarks2013/"+bench)
            log("Benchmark " + bench)
            result = subprocess.run("time ./run.sh 2> /dev/null", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
            output = result.stdout.decode('utf-8')
            log( "stdout = " + output)
            new_o1_bench_outputs[bench] = output
            os.chdir(root)

    save_scores(new_o1_bench_outputs, 'o1_bench_outputs.json')

def check_output_for_correctness(benchmark, output):
    o1_bench_outs = load_scores('o1_bench_outputs.json')
    o1_result = o1_bench_outs[benchmark]
    return (output == o1_result)

def show_sorted_list_of_flags():
    flags = load_scores('option_scores.json')

    latest_flags = {}
    for flag, scores in flags.items():
        latest_flags[flag] = scores[-1]

    sorted_flags = sorted(latest_flags.items(), key=itemgetter(1), reverse=True)

    save_scores(sorted_flags, 'sorted_flags.json')

# def find_average_score(flags):

#     total_score = 0
#     for flag, scores in flags.items():
#         total_score += scores[-1]

#     num_flags = len(flags)

#     return int(total_score/num_flags)

def tidy_option_scores():
    flags = load_scores('option_scores.json')

    new_flags = {}
    for flag, scores in flags.items():
        new_flags[flag] = []
        new_flags[flag].append(scores[-1])

    save_scores(new_flags, 'option_scores.json')

def confidence_interval_test():

    times = [3409,3370,3467,3466,3456,3585,3570,3562,3408,3484,3450,3470,3456,3484,3450,3470,3456,3484,3450,3470,3456,3484,3450,3470,3456,3484,3450,3470,3456,3484,3450,3470,3456]

    print(compute_95confidence_interval(times))

def compute_95confidence_interval(data):

    data.sort()

    median = numpy.median(data)

    n = len(data)
    
    lower_ind = int((n / 2) - ((1.96 * math.sqrt(n)) / 2))
    upper_ind = int(1 + (n / 2) + ((1.96 * math.sqrt(n)) / 2))
    
    plus_error = data[upper_ind] - median
    neg_error = median - data[lower_ind]

    confidence_interval = plus_error + neg_error

    return (median, confidence_interval, data[lower_ind], data[upper_ind])


def sort_stats_test():
    benchmark_stats = load_scores('./COPT/CW/test.json')
    
    print(benchmark_stats)
    benchmark_stats = sorted(benchmark_stats.items(), key=lambda e: e[1][2])

    print(benchmark_stats)
    save_scores(benchmark_stats, './COPT/CW/test.json')

def test_different_timing():

    for flag in basic_opts:
        for bench in s_benchmarks:
            compile_program(flag, bench)

            root = os.getcwd()
            os.chdir("./coptbenchmarks2013/"+bench)
            func = ["time", "./run.sh"]

            result = subprocess.run("time ./run.sh 2> /dev/null", stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
            os.chdir(root)
            
            timing = {}
            times = result.stderr.decode('utf-8')
            for line in times.splitlines()[1:4]:
                (name,value) = line.split("\t")
                # log("name " + name)
                # log("value " + value)
                (s_minutes,s_seconds) = value.split("m")
                # log("minutes " + s_minutes)
                # log("seconds " + s_seconds)
                minutes = float(s_minutes)
                seconds = float(s_seconds.strip("s"))
                # log("minutes " + str(minutes))
                # log("seconds " + str(seconds))
                milliseconds = (minutes * 60 * 1000) + (seconds * 1000)
                # log("milliseconds " + str(milliseconds))
                timing[name] = milliseconds
            
            # log("real is " + str(timing))
            compute_time = timing["user"] + timing["sys"]
            compute_time2 = timing["real"]  

            log("Flag = " + str(flag) + "\tBenchmark = " + str(bench))
            log("User+Sys = " + str(compute_time) )
            log("Real = " + str(compute_time2) )

# Visualisations
def plot_benchmark(bench, errs=False):
    filename = "./stats/" + str(bench) + ".json"
    stats = load_scores(filename)


    # Get y values as medians
    y = []
    yerr_pos = []
    yerr_neg = []
    for flags, scores in stats.items():
        y.append(scores[2])
        yerr_pos.append(scores[5] - scores[2])
        yerr_neg.append(scores[2] - scores[4])

    yerr = [yerr_neg, yerr_pos]
    # y = 
    # Get y errors as lower and upper confidence bounds

    # yerr
    # Print the graph
    if (errs):
        plt.bar(range(len(y)), y, yerr=yerr)
    else:
        plt.bar(range(len(y)), y)
    plt.show()

def plot_benchmark_sorted(bench, errs=False):
    filename = "./stats/sorted/" + str(bench) + ".json"
    stats = load_scores(filename)


    # Get y values as medians
    y = []
    yerr_pos = []
    yerr_neg = []
    o0_y = 0
    o1_y = 0
    o2_y = 0
    o3_y = 0
    best_y = 100000000
    number = 0
    total = 0
    for stat in stats:
        if stat[0] == "-O3":
            o3_y = (stat[1])[2]
        elif stat[0] == "-O2":
            o2_y = (stat[1])[2]
        elif stat[0] == "-O1":
            o1_y = (stat[1])[2]
        elif stat[0] == "-O0":
            o0_y = (stat[1])[2]
        
        if (stat[1])[2] < best_y:
            best_y = (stat[1])[2]
        
        number += 1
        total += (stat[1])[2]
        scores = stat[1]
        y.append(scores[2])
        yerr_pos.append(scores[5] - scores[2])
        yerr_neg.append(scores[2] - scores[4])

    av_y = int(total/number)

    yerr = [yerr_neg, yerr_pos]
    # y = 
    # Get y errors as lower and upper confidence bounds

    # yerr
    fig = plt.figure()
    ax = fig.add_subplot(111)
    # Print the graph
    if (errs):
        ax.bar(range(len(y)), y, yerr=yerr, label='Iterations')
    else:
        ax.bar(range(len(y)), y, label='Iterations')

    ax.axhline(y=o0_y, color='b', linestyle='-', label='-O0='+str(o0_y))
    ax.axhline(y=o1_y, color='g', linestyle='-', label='-O1='+str(o1_y))
    ax.axhline(y=o2_y, color='y', linestyle='-', label='-O2='+str(o2_y))
    ax.axhline(y=o3_y, color='r', linestyle='-', label='-O3='+str(o3_y))
    
    ax.axhline(y=best_y, color='m', linestyle='-', label='Best='+str(best_y))
    ax.axhline(y=av_y, color='c', linestyle='-', label='Average='+str(av_y))

    ax.set_xlabel('Iterations - sorted')
    ax.set_ylabel('Execution time - median [ms]')
    ax.set_title('Execution results for ' + str(bench))

    ax.legend()
    plt.show()

def plot_benchmark_all():
    filename = "./stats/" + "overall" + ".json"
    stats = load_scores(filename)


    # Get y values as medians
    y = []
    for flags, scores in stats.items():
        y.append(scores[1])
    plt.bar(range(len(y)), y)
    plt.show()

def plot_benchmark_all_sorted():
    filename = "./stats/sorted/" + "overall" + ".json"
    stats = load_scores(filename)


    # Get y values as medians
    y = []
    yerr_pos = []
    yerr_neg = []
    o0_y = 0
    o1_y = 0
    o2_y = 0
    o3_y = 0
    best_y = 100000000
    number = 0
    total = 0
    for stat in stats:
        if stat[0] == "-O3":
            o3_y = (stat[1])[1]
        elif stat[0] == "-O2":
            o2_y = (stat[1])[1]
        elif stat[0] == "-O1":
            o1_y = (stat[1])[1]
        elif stat[0] == "-O0":
            o0_y = (stat[1])[1]
        
        if (stat[1])[1] < best_y:
            best_y = (stat[1])[1]
        
        number += 1
        total += (stat[1])[1]
        scores = stat[1]
        y.append(scores[1])

    av_y = int(total/number)

    # y = 
    # Get y errors as lower and upper confidence bounds

    # yerr
    fig = plt.figure()
    ax = fig.add_subplot(111)
    
    # Print the graph
    ax.bar(range(len(y)), y, label='Iterations')

    ax.axhline(y=o0_y, color='b', linestyle='-', label='-O0='+str(o0_y))
    ax.axhline(y=o1_y, color='g', linestyle='-', label='-O1='+str(o1_y))
    ax.axhline(y=o2_y, color='y', linestyle='-', label='-O2='+str(o2_y))
    ax.axhline(y=o3_y, color='r', linestyle='-', label='-O3='+str(o3_y))
    
    ax.axhline(y=best_y, color='m', linestyle='-', label='Best='+str(best_y))
    ax.axhline(y=av_y, color='c', linestyle='-', label='Average='+str(av_y))

    ax.set_xlabel('Iterations - sorted')
    ax.set_ylabel('Execution time - median [ms]')
    ax.set_title('Execution results for the total execution time')

    ax.legend()
    plt.show()

def how_many_beat_o3():
    overall_scores = load_scores('stats/overall.json')

    no_beat = {}
    runs = 0
    for flag, avgTimes in overall_scores.items():

        times_beat = 0
        runs += 1
        for bench in s_benchmarks2:
            benchmark_stats = load_scores("stats/"+str(bench)+".json")
            o3_time = (benchmark_stats["-O3"])[2]
            flag_time = (benchmark_stats[flag])[2]
            if flag_time < o3_time :
                times_beat += 1
            
        no_beat[flag] = times_beat

    save_scores(no_beat, "numberBeat.json")
    print(runs)


# Main
basic_flags()
populate_score_lists()
incremental_improvement("overall", 50)
incremental_improvement("401.bzip2", 20)
incremental_improvement("429.mcf", 20)
incremental_improvement("433.milc", 20)
incremental_improvement("445.gobmk", 20)
incremental_improvement("456.hmmer", 20)
incremental_improvement("458.sjeng", 20)
incremental_improvement("462.libquantum", 20)
incremental_improvement("464.h264ref", 20)
incremental_improvement("470.lbm", 20)
incremental_improvement("h263dec", 20) # Not going to do because it fails
incremental_improvement("h263enc", 20)
incremental_improvement("mpeg2dec", 20)
incremental_improvement("mpeg2enc", 20)
incremental_improvement("overall", 50)

how_many_beat_o3()

# plot_benchmark_sorted("mpeg2enc", True)
plot_benchmark_all_sorted()
# plot_benchmark_all()