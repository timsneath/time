#!/bin/bash

mkdir -p {dart,go,java,results}

dart2native hello.dart -o dart/hello 
go build -o go hello.go
javac -d java hello.java

echo 'Comparing JIT/interpreted environments'
./hyperfine --warmup 10 --export-markdown 'results/interpreted.md' \
  'go run hello.go' \
  'dart hello.dart' \
  'node hello.js' \
  'python3 hello.py' \
  'ruby hello.rb'

echo 'Comparing compiled runtime environments'
./hyperfine --warmup 10 --export-markdown 'results/compiled.md' \
  'go/hello' \
  'dart/hello' \
  'java -cp java HelloWorld'