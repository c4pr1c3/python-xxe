FROM python:3.8-slim

MAINTAINER c4pr1c3 "c4pr1c3@gmail.com"

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "xxe.py" ]
