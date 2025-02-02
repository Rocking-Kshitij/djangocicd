FROM python:alpine3.20
WORKDIR /app
COPY requirement.txt /app/
RUN pip3 install -r requirement.txt
COPY .env /app/
COPY tooplat /app/tooplat/
COPY Dockerfile/scripts/entrypoint.sh /app/
EXPOSE 8002
RUN chmod +x entrypoint.sh
CMD ["sh", "entrypoint.sh"]