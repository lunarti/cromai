FROM python:3
COPY . /data
WORKDIR /data
CMD ["sh", "cromai.sh"]