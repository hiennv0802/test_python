FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN test_python create-db
RUN test_python populate-db
RUN test_python add-user -u admin -p admin
EXPOSE 5000
CMD ["test_python", "run"]
