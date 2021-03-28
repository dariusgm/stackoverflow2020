FROM python:3.9.2-buster
MAINTAINER darius@murawski.blog
WORKDIR /app
ADD ./ /app
RUN python3 -m pip install --upgrade pip
RUN pip3 install pipenv
RUN pipenv install --dev --python 3.9.2
EXPOSE 8888
CMD ["pipenv", "run", "jupyter-notebook", "--allow-root", "--no-browser", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''"]