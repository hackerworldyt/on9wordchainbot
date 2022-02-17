FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/DEADLY-FIGHTERS/DEADLY-SPAM-BOT.git /root/OfficialSameer
#working directory 
WORKDIR /root/OfficialSameer

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/OfficialSameer/bin:$PATH"

CMD ["python3","-m","OfficialSameer"]
