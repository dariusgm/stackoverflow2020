# Fetching repository and data

```
git clone https://github.com/dariusgm/stackoverflow2020 && cd stackoverflow2020
```

Now we are ready to download the data from Stackoverflow. Visit: https://insights.stackoverflow.com/survey/ and click "Download Full Data Set (CSV)" for 2020. Place the zip file into your stackoverflow2020 directory and unpack it. Make sure a directory with "developer_survey_2020" was created with 4 files in it:
* README.2020.txt
* so_survey_2020.pdf
* survey_results_public.csv
* survey_results_schema.csv

 On linux based systems, you can use `unzip developer_survey_2020.zip`

# Repository Structure

After fetching the data, you should have following directory structure:

- .gitignore: Files to ignore for git
- .dockerignore: Files to ignore by docker
- .python-version: Store correct python version for this environment using `pyenv`
- Blog.ipynb: The acual jupyter-notebook with all python code.
- developer_survey_2020.zip: zipped data from stack overflow
- Dockerfile: Will generate a ready to use application using `docker`
- Pipfile: Depency management file
- Pipfile.lock: Resolved dependencies by pipenv
- README.md: this file

- developer_survey_2020 (directory)
- README_2020.pdf 
- so_survey_2020.pdf: Survey input formular
- survey_resuls_public.csv: acual data we need
- survey_results_schema.csv: Schema definition we don't use


# Installation Native

Install pyenv on your platform, see: https://github.com/pyenv/pyenv


```
pyenv install 3.9.2
pyenv local 3.9.2
pyenv rehash
python3 -m pip install --upgrade pip
pip3 install pipenv
pipenv install --dev --python 3.9.2
pipenv run notebook
```

# Installation Docker

Please note: Depending on your setup, sudo or root may (not) be required for running the docker commands. 

```
sudo docker build -t dariusblog .
```
This may take some time.


# Starting Native

When you used the native installation, you can run the notebook by running:
```
pipenv run jupyter-notebook
```

# Starting Docker

And in case you used the docker approach, please use this command:
```
sudo docker run -p 8888:8888 dariusblog
```

Please wait a minute to allow the notebook to boot up. Than you can access under http://localhost:8888 the notebook. Do not run this Dockerfile on a public server, as no credentials are required to access the jupyter server.