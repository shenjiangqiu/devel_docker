# a docker container for c++ develope

## step1: to build:
- `docker build --tag cppdevel .`

## step2: to start:
put all your code into ./work or indicate your work path and mount it to the container
(option1,for simple task)operate as root:
- `docker run -d -it --name my_cpp_devel_1 -v "{abs path to your work}:/root/work" cppdevel`
(option2, recommended!)operate as your own user(that means you can esayly operating files both in docker and host):
- `docker run -d -it --name my_cpp_devel_1 -v "{abs path to your work}:/home/{your user name}/work" -v "/etc/passwd:/etc/passwd:ro" -v "/etc/shadow:/etc/shadow:ro" cppdevel`
## step3: attach when to use:
- (optional:if you stoped in step4) `docker start my_cpp_devel_1`
- `docker attach my_cpp_devel_1`

## step4: dettach when finished using:
- `Ctrl-P and then Ctrl-Q`

loop step 3 and step 4

***if you are using VSCODE in a mac , you should read this artical:https://stackoverflow.com/questions/55484562/how-to-detach-from-docker-container-from-integrated-terminal-send-ctrl-p-ctr ***
