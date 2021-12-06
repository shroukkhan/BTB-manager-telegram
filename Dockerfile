FROM python:3.8 as builder

WORKDIR ./

RUN apt-get update

COPY telegrambot/requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

#COPY requirements.txt ./trader-requirements.txt
#
#RUN pip install --no-cache-dir -r trader-requirements.txt
#RUN mkdir /btb_manager_telegram
#COPY telegrambot/btb_manager_telegram/ /btb_manager_telegram

CMD [ "python", "-m", "btb_manager_telegram", "-p", "./binance-trade-bot/"]
