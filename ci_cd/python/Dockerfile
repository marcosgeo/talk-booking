FROM python:3.9-slim

RUN mkdir -p /home/app && addgroup app && useradd -d /home/app -g app app && chown app:app /home/app
RUN apt-get update && apt-get install -y curl
USER app
WORKDIR /home/app
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
ENV PATH=/home/app/.poetry/bin:$PATH
RUN poetry config virtualenvs.in-project true