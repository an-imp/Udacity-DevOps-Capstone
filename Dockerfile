FROM python:3.7.3-stretch

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY . app.py /app/

# Install packages from requirements.txt
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt

# run app.py as running app option
ARG FLASK_APP=app.py

# Run app.py at container launch
ENTRYPOINT [ "flask", "run", "--host=0.0.0.0" ]

