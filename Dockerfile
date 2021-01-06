from python:3.6.4-slim-jessie

# From https://towardsdatascience.com/build-your-own-python-restful-web-service-840ed7766832

RUN pip install pandas
RUN pip install CherryPy

COPY myprocessor.py .
COPY ws.py .
EXPOSE 8080
ENTRYPOINT ["python", "ws.py"]

