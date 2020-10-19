FROM python:3

WORKDIR /usr/src/yolo3
ENV PORT=8000

RUN pip install httpserver

COPY index.html .
COPY detect.js .

EXPOSE 8000 80 8080 5432 8888

CMD python -m http.server





