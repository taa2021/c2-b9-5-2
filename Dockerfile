FROM python:3.10-alpine

WORKDIR /var/spool/get-favicon

ENTRYPOINT [ "python3", "-c", "import sys, urllib.request as r; r.urlretrieve(sys.argv[1]+'/favicon.ico', 'favicon.ico')" ]
CMD [ "https://yandex.ru" ]
