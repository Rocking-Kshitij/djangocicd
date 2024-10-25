FROM python:alpine3.20
WORKDIR /app
COPY requirement.txt /app/
RUN pip3 install -r requirement.txt
COPY tooplat /app/tooplat/
COPY Dockerfile/scripts/setupsc.sh /app/
COPY .env* /app/
EXPOSE 8002
RUN chmod +x setupsc.sh && sh ./setupsc.sh
RUN mv .env* .env
CMD ["python", "./tooplat/manage.py", "runserver", "0.0.0.0:8001"]