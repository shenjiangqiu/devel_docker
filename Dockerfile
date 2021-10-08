FROM ubuntu
RUN apt-get update -y && apt-get install zsh -y
RUN apt-get install gcc g++ cmake make -y
RUN apt-get install libboost-all-dev -y
RUN apt-get install -y wget python3-pip git
RUN echo "Y"|sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN pip3 install thefuck --user
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
COPY ./.autojump /root/.autojump
COPY ./.zshrc /root/.zshrc
RUN apt-get install -y python
WORKDIR /root/
ENTRYPOINT [ "zsh" ]
