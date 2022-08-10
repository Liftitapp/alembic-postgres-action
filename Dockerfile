FROM python:3.8-slim

USER root

RUN apt update && apt-get install -y git build-essential libssl-dev libffi-dev python3-dev
RUN apt-get update -y && apt-get install -y postgresql-client

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN PYTHONPATH=app/
ENTRYPOINT ["/entrypoint.sh"]
