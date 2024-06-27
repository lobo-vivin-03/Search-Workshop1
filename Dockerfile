FROM public.ecr.aws/docker/library/python:3.8

RUN apt-get update && apt-get install -y postgresql-client
RUN pip install --upgrade pip
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

ENV POSTGRES_DB='amazon'
ENV POSTGRES_USER='workshop_user'

ENV POSTGRES_PASSWORD='workshop_user1'

ENV POSTGRES_HOST='192.168.236.92'

ENV POSTGRES_PORT='5435'
COPY ./ ./
