FROM alpine:latest
RUN mkdir /var/flaskapp
WORKDIR /var/flaskapp
COPY ./source/ /var/flaskapp/
RUN apk update
RUN apk add python3 py3-pip --no-cache
RUN pip3 install -r requirements.txt
CMD ["python3", "app.py"]
EXPOSE 80