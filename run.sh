#!/bin/bash

mkdir -p {dart,go,java}

echo 'Dart (interpreted)'
./hyperfine 'dart hello.dart' --warmup 10 --runs 100

echo 'Dart (AOT compiled)'
dart2native hello.dart -o dart/hello 
./hyperfine 'dart/hello' --warmup 10 --runs 100

echo 'Go (interpreted)'
./hyperfine 'go run hello.go' --warmup 10 --runs 100

echo 'Go (compiled)'
go build -o go hello.go
./hyperfine 'go/hello' --warmup 10 --runs 100

echo 'Java (compiled)'
javac -d java hello.java
./hyperfine 'java -cp java HelloWorld' --warmup 10 --runs 100

echo 'Node'
./hyperfine 'node hello.js' --warmup 10 --runs 100

echo 'Python 3'
./hyperfine 'python3 hello.py' --warmup 10 --runs 100

echo 'Ruby'
./hyperfine 'ruby hello.rb' --warmup 10 --runs 100

echo 'Shell'
./hyperfine './hello.sh' --warmup 10 --runs 100

