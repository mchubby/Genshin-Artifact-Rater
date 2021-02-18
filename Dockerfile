# This file is used by Railway.app to deploy the application
FROM python:3
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y \
    libgl1

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "rate_artifact_rest.py" ]