#USE lightweight Python 3.7 image
#https//hubdocker.com?_?python

FROM python:3.7-slim

#Copy local code to the container umage

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

#iNSTALL PRODUCTION DEPENDENCIES

RUN pip install Flask gunicorn

#Run the web service on container startup gunicorn webserver withone woker process and 8 threads 

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app 