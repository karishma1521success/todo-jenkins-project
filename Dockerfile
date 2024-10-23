# using python base image
FROM python:3.9

# set working directory inside the container
WORKDIR /todo-app

# copy the entire project into the container's working directory
COPY . /todo-app/

# Install dependencies
RUN pip install django==3.2

# set environment variables to avoid django warnings
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# expose the port that the django app run on
EXPOSE 8000

# Run database migrations and start the django development
# CMD [ "python" , "manage.py" , "migrate" ]
CMD [ "python" , "manage.py", "runserver", "0.0.0.0:8000" ]