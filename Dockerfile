FROM ubuntu:18.04
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD app/requirements.txt /tmp
RUN pip install -qr requirements.txt
ADD app/* /opt/webapp
EXPOSE 5000
CMD ["/opt/webapp/app.py"]
ENTRYPOINT ["python"]