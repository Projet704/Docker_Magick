FROM alpine:latest 

RUN apk add python3 py3-pip --no-cache \
&& apk add imagemagick \
&& apk add git \
&& git config --global user.name Maxence \
&& git config --global user.email max51jeux@gmail.com 
COPY . .
RUN pip install -r requirements.txt
CMD [ "python3", "./test.py","url.json"] 
