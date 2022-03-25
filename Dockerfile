FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /main
WORKDIR /main
COPY requirements.txt
COPY main.py
COPY app.py
COPY config.py
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /main
EXPOSE 5000
CMD [ "python", "./main.py" ]