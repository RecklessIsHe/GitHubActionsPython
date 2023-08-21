FROM amazon/aws-cli:latest

WORKDIR ./

COPY ./.aws ./root/.aws

COPY . .

RUN yum install gcc openssl-devel bzip2-devel libffi-devel gzip make -y
RUN yum install wget tar -y
WORKDIR /opt
RUN wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz
RUN tar xzf Python-3.9.6.tgz
WORKDIR /opt/Python-3.9.6
RUN ./configure --enable-optimizations
RUN make altinstall
RUN rm -f /opt/Python-3.9.6.tgz

RUN ["python3", "-u", "main.py"]
