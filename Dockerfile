FROM python:3.9

COPY . /The-Movie-Cinema-master/.ipynb_checkpoints
COPY ./The-Movie-Cinema-master/__pycache__
COPY ./The-Movie-Cinema-master/datasets
COPY ./The-Movie-Cinema-master/static/autocomplete
COPY ./The-Movie-Cinema-master/static/default
COPY ./The-Movie-Cinema-master/static/image
COPY ./The-Movie-Cinema-master/static/loader
COPY ./The-Movie-Cinema-master/static/movie_placeholder
COPY ./The-Movie-Cinema-master/static/recommend
COPY ./The-Movie-Cinema-master/static/style
COPY ./The-Movie-Cinema-master/templates/home
COPY ./The-Movie-Cinema-master/templates/recommend
COPY ./The-Movie-Cinema-master/finaldata
COPY ./The-Movie-Cinema-master/main
COPY ./The-Movie-Cinema-master/main_data
COPY ./The-Movie-Cinema-master/movie
COPY ./The-Movie-Cinema-master/movie_metadata
COPY ./The-Movie-Cinema-master/nlp_model.pkl
COPY ./The-Movie-Cinema-master/preprocessing 2
COPY ./The-Movie-Cinema-master/preprocessing 3
COPY ./The-Movie-Cinema-master/preprocessing 4
COPY ./The-Movie-Cinema-master/procfile
COPY ./The-Movie-Cinema-master/README
COPY ./The-Movie-Cinema-master/requirements
COPY ./The-Movie-Cinema-master/reviews
COPY ./The-Movie-Cinema-master/sentiment
COPY ./The-Movie-Cinema-master/tranform.pkl
COPY ./The-Movie-Cinema-master/

RUN pip install -r /The-Movie-Cinema-master/requirements.txt

RUN apt-get update \
    && apt-get install -qqy screen \
    && rm -rf /var/lib/apt/lists
    
    CMD ["python", "/The-Movie-Cinema-master/main.py"]
