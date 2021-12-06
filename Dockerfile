FROM python:3.8 as builder

WORKDIR ./

RUN apt-get update

COPY telegrambot/requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

CMD [ "python", "-m", "btb_manager_telegram", "-p", "./binance-trade-bot/"]
