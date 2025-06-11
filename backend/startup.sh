#!/bin/bash

pip install -r requirements.txt
exec gunicorn -w 4 -k uvicorn.workers.UvicornWorker backend.main:app
