FROM python:alpine

RUN pip install urllib3

COPY * /

VOLUME /etc/prom-conf

ENTRYPOINT ["/entrypoint.sh"]

CMD ["python", "/prom-rancher-sd.py"]
