FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /main
WORKDIR /main
COPY requirements.txt /main
COPY main.py /main
COPY app.py /main
COPY config.py /main
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /main
EXPOSE 5000
CMD [ "python", "./main.py" ]