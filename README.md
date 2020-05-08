## Instructions

Install [hyperfine](https://github.com/sharkdp/hyperfine).

```bash
$ ./run.sh
```

## Output
Results on a MacBook Pro (13-inch, 2019, Four Thunderbolt 3 ports)

 - macOS Catalina Version 10.15.4 (19E287)
 - 2.8 GHz Quad-Core Intel Core i7
 - 16 GB 2133 MHz LPDDR3
 - Intel Iris Plus Graphics 655 1536 MB


```
Dart (interpreted)
Benchmark #1: dart hello.dart
  Time (mean ± σ):     134.5 ms ±   1.6 ms    [User: 148.8 ms, System: 41.8 ms]
  Range (min … max):   132.4 ms … 140.3 ms    100 runs
 
Dart (AOT compiled)
Generated: /Users/timsneath/scratch/time/dart/hello
Benchmark #1: dart/hello
  Time (mean ± σ):       7.7 ms ±   0.4 ms    [User: 3.9 ms, System: 3.2 ms]
  Range (min … max):     7.1 ms …  10.3 ms    100 runs
 
Go (interpreted)
Benchmark #1: go run hello.go
  Time (mean ± σ):     346.2 ms ±  23.8 ms    [User: 166.2 ms, System: 120.7 ms]
  Range (min … max):   317.6 ms … 437.6 ms    100 runs
 
Go (compiled)
Benchmark #1: go/hello
  Time (mean ± σ):       3.0 ms ±   0.3 ms    [User: 1.1 ms, System: 1.1 ms]
  Range (min … max):     2.6 ms …   4.7 ms    100 runs
 
  Warning: Command took less than 5 ms to complete. Results might be inaccurate.
 
Java (compiled)
Benchmark #1: java -cp java HelloWorld
  Time (mean ± σ):      86.9 ms ±   1.0 ms    [User: 81.4 ms, System: 21.9 ms]
  Range (min … max):    85.1 ms …  89.5 ms    100 runs
 
Python 3
Benchmark #1: python3 hello.py
  Time (mean ± σ):      35.6 ms ±   1.5 ms    [User: 22.1 ms, System: 10.2 ms]
  Range (min … max):    33.4 ms …  41.2 ms    100 runs
 
Node
Benchmark #1: node hello.js
  Time (mean ± σ):      30.7 ms ±   1.2 ms    [User: 24.3 ms, System: 5.0 ms]
  Range (min … max):    29.1 ms …  37.7 ms    100 runs
 
  Warning: Statistical outliers were detected. Consider re-running this benchmark on a quiet PC without any interferences from other programs. It might help to use the '--warmup' or '--prepare' options.
 
Shell
Benchmark #1: ./hello.sh
  Time (mean ± σ):       1.8 ms ±   0.3 ms    [User: 0.6 ms, System: 0.9 ms]
  Range (min … max):     1.5 ms …   3.2 ms    100 runs
 
  Warning: Command took less than 5 ms to complete. Results might be inaccurate.
```