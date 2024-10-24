FROM python:alpine3.20
WORKDIR /app
COPY requirement.txt /app/
RUN pip3 install -r requirement.txt
COPY tooplat /app/tooplat/
COPY .env /app/
COPY Dockerfile/scripts/entrypoint.sh /app/
EXPOSE 8002
RUN chmod +x entrypoint.sh
CMD ["sh", "entrypoint.sh"]