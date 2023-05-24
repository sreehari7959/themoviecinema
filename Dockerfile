FROM python:3.9

COPY . /The-Movie-Cinema-master

RUN pip install -r /The-Movie-Cinema-master/requirements.txt

RUN apt-get update \
    && apt-get install -qqy screen \
    && rm -rf /var/lib/apt/lists
    
    CMD ["python", "/The-Movie-Cinema-master/main.py"]
