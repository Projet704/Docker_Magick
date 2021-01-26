FROM alpine:latest 

RUN apk add python3 py3-pip --no-cache \
&& apk add imagemagick \
&& apk add git
COPY . .


CMD [ "python3", "./test.py","url.json"] 
