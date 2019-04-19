FROM python:3
ENV PYTHONUNBUFFERED 1

# Prerequisites for python-ldap 
RUN apt update && apt-get install -y libsasl2-dev python-dev libldap2-dev libssl-dev

# Create working directory
RUN mkdir /home/django_site
WORKDIR /home/django_site
ADD requirements.txt /home/django_site
RUN pip install -r /home/django_site/requirements.txt
ADD ./django_site /home/django_site/
