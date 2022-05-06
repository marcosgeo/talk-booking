FROM python:3.9-slim

RUN mkdir -p /home/app && addgroup app && useradd -d /home/app -g app app
WORKDIR /home/app
RUN pip install poetry
RUN poetry config virtualenvs.in-project true
COPY ./services .
RUN cd talk_booking && poetry install
RUN  chown app:app /home/app
USER app
