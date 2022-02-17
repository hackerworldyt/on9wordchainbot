FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/hackerworldyt/on9wordchainbot.git /root/on9wordchainbot
#working directory 
WORKDIR /root/on9wordchainbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/on9wordchainbot/bin:$PATH"

CMD ["python3","-m","on9wordchainbot"]
