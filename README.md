# timsneath/time

This repo compares the startup time for a 'Hello World'-program
implemented in several popular programming langagues.

## Instructions

Install [hyperfine](https://github.com/sharkdp/hyperfine).

```bash
./run.sh
```

## Output

Results on a MacBook Pro (13-inch, 2019, Four Thunderbolt 3 ports)

- macOS Monterey Version 12.0 Beta (21A5284e)
- 2.8 GHz Quad-Core Intel Core i7
- 16 GB 2133 MHz LPDDR3
- Intel Iris Plus Graphics 655 1536 MB

```plain text
$ ./run.sh
Dart (interpreted)
Benchmark #1: dart hello.dart
  Time (mean ± σ):     209.5 ms ± 141.2 ms    [User: 177.4 ms, System: 66.7 ms]
  Range (min … max):   185.3 ms … 1205.4 ms    100 runs
 
Dart (AOT compiled)
Info: Compiling with sound null safety
Generated: /Users/timsneath/git/me/time/dart/hello
Benchmark #1: dart/hello
  Time (mean ± σ):      12.8 ms ±   0.7 ms    [User: 6.3 ms, System: 4.2 ms]
  Range (min … max):    11.7 ms …  17.2 ms    100 runs
 
Go (interpreted)
Benchmark #1: go run hello.go
  Time (mean ± σ):     285.7 ms ±   9.0 ms    [User: 147.0 ms, System: 145.1 ms]
  Range (min … max):   270.9 ms … 329.0 ms    100 runs
 
Go (compiled)
Benchmark #1: go/hello
  Time (mean ± σ):       3.7 ms ±   0.6 ms    [User: 1.2 ms, System: 1.3 ms]
  Range (min … max):     2.9 ms …   6.7 ms    100 runs
 
Java (compiled)
Benchmark #1: java -cp java HelloWorld
  Time (mean ± σ):      40.5 ms ±   1.2 ms    [User: 24.2 ms, System: 14.5 ms]
  Range (min … max):    39.0 ms …  44.4 ms    100 runs
 
Node
Benchmark #1: node hello.js
  Time (mean ± σ):      33.9 ms ±   0.6 ms    [User: 27.7 ms, System: 5.4 ms]
  Range (min … max):    32.4 ms …  36.0 ms    100 runs
 
Python 3
Benchmark #1: python3 hello.py
  Time (mean ± σ):      30.0 ms ±   1.5 ms    [User: 19.0 ms, System: 7.4 ms]
  Range (min … max):    27.7 ms …  36.9 ms    100 runs
 
Ruby
Benchmark #1: ruby hello.rb
  Time (mean ± σ):      62.2 ms ±   1.1 ms    [User: 47.7 ms, System: 12.2 ms]
  Range (min … max):    59.5 ms …  65.7 ms    100 runs
 
Shell
Benchmark #1: ./hello.sh
  Time (mean ± σ):       2.3 ms ±   0.6 ms    [User: 0.8 ms, System: 1.1 ms]
  Range (min … max):     1.5 ms …   3.9 ms    100 runs
```
