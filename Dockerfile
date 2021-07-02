FROM ViruThon/Viru-Pack:alpine

#clonning repo 
RUN git clone https://github.com/ViruThon/Viru-Pack.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
