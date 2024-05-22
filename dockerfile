FROM ubuntu:latest

WORKDIR /godottuts

COPY . .

RUN apt -y update && apt -y upgrade

RUN apt -y install $(cat requirements.txt)

RUN python3 -m venv dev

RUN chmod +x /godottuts/start_dev_env.sh

ENTRYPOINT [ "/godottuts/start_dev_env.sh" ]
