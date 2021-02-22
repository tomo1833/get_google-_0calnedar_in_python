FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./main.py"]

################################
# docker build -t my-python-app .

################################
# docker build コマンド
# docker run -it --rm --name my-running-app my-python-app

