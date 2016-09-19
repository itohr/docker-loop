FROM ubuntu:14.04
RUN apt-get update 
RUN apt-get install -y python python-dev python-pip
RUN pip install dumb-init
COPY loop.py /
ENTRYPOINT ["dumb-init"]
CMD ["python", "/loop.py"]
