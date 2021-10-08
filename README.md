# a docker container for c++ develope

## step1: to build:
- docker build --tag cppdevel .

## step2: to start:
put all your code into ./work and mount it to the container

- docker run -d -it --name my_cpp_devel_1 -v "./work:/root/work" cppdevel

## step3: attach when to use:
- docker attach my_cpp_devel_1

## step4: dettach when finished using:
- Ctrl-P and then Ctrl-Q

loop step 3 and step 4