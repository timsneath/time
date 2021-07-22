This repo compares the startup time for a 'Hello World'-program
implemented in several popular programming langagues.

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
  Time (mean ± σ):     148.0 ms ±  11.1 ms    [User: 154.9 ms, System: 50.3 ms]
  Range (min … max):   141.5 ms … 237.9 ms    100 runs
 
Dart (AOT compiled)
Generated: /Users/timsneath/git/time/dart/hello
Benchmark #1: dart/hello
  Time (mean ± σ):       8.4 ms ±   0.5 ms    [User: 3.9 ms, System: 3.6 ms]
  Range (min … max):     7.6 ms …  10.2 ms    100 runs
 
Go (interpreted)
Benchmark #1: go run hello.go
  Time (mean ± σ):     386.1 ms ±  83.6 ms    [User: 171.1 ms, System: 132.9 ms]
  Range (min … max):   336.0 ms … 893.0 ms    100 runs
 
Go (compiled)
Benchmark #1: go/hello
  Time (mean ± σ):       3.2 ms ±   0.4 ms    [User: 1.1 ms, System: 1.2 ms]
  Range (min … max):     2.7 ms …   4.7 ms    100 runs
 
  Warning: Command took less than 5 ms to complete. Results might be inaccurate.
 
Java (compiled)
Benchmark #1: java -cp java HelloWorld
  Time (mean ± σ):      90.9 ms ±   3.6 ms    [User: 83.3 ms, System: 23.8 ms]
  Range (min … max):    88.1 ms … 114.5 ms    100 runs
 
Node
Benchmark #1: node hello.js
  Time (mean ± σ):      31.1 ms ±   1.3 ms    [User: 24.5 ms, System: 5.5 ms]
  Range (min … max):    29.4 ms …  38.3 ms    100 runs
 
Python 3
Benchmark #1: python3 hello.py
  Time (mean ± σ):      36.8 ms ±   1.1 ms    [User: 22.1 ms, System: 11.3 ms]
  Range (min … max):    35.4 ms …  43.4 ms    100 runs
 
Ruby
Benchmark #1: ruby hello.rb
  Time (mean ± σ):      83.4 ms ±   5.3 ms    [User: 56.8 ms, System: 22.0 ms]
  Range (min … max):    79.1 ms … 128.8 ms    100 runs
 
Shell
Benchmark #1: ./hello.sh
  Time (mean ± σ):       1.9 ms ±   0.4 ms    [User: 0.6 ms, System: 1.0 ms]
  Range (min … max):     1.4 ms …   3.5 ms    100 runs
 
  Warning: Command took less than 5 ms to complete. Results might be inaccurate
```
