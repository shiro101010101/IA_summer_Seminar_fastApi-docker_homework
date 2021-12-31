FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

COPY ./app /app

WORKDIR /app

ADD requirements.txt .
RUN pip install -U pip \
    && pip install --trusted-host pypi.python.org -r requirements.txt