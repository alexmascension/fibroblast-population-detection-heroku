FROM continuumio:miniconda3

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update
RUN apt-get install -y build-essential libxml2-dev zlib1g-dev
RUN pip install cellxgene

# ENTRYPOINT ["cellxgene"]  # Heroku doesn't work well with ENTRYPOINT
