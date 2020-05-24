FROM python:3.7

WORKDIR /home

ADD requirements.txt /home

ADD *.py /home

RUN pip install -r /home/requirements.txt

CMD ["uvicorn","api:app","--host","0.0.0.0"]
