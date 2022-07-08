# kaggle-docker

Docker project to create a local kaggle environment using the offical kaggle docker images.

See the docs on the [kaggle cli](https://github.com/Kaggle/kaggle-api) to learn how to create an kaggle.json file for authenticating to kaggle and 

## Project Setup

    # install docker and docker-compose
    # rancher desktop is a good choice: https://rancherdesktop.io/

    # install python 3

    # install the kaggle CLI so you can download data files and submit results
    pip install kaggle
    
    # create a kaggle credential file so you can use the kaggle cli and make submissions
    # see https://github.com/Kaggle/kaggle-api#api-credentials
    mkdir -p ~/.kaggle
    vim -p ~/.kaggle/kaggle.json
    chmod 600 ~/.kaggle/kaggle.json


## How to use this project

    # start the notebooks
    make run

    # NOTE: You will need to accept competition rules before submitting
    open https://www.kaggle.com/c/titanic/rules

    # download some competition files
    cd input
    mkdir titanic
    cd titanic
    kaggle competitions download titanic
    unzip titanic.zip
    cd ../../

    # create a project and git repo
    mkdir -p working/projects/titanic
    cd working/projects/titanic
    echo "# Titanic kaggle competition" > README.md
    echo ".ipynb_checkpoints" >> .gitignore
    git init
    git add -A
    git commit -m "initial commit"
    cd ../../../

    # open a browser window
    open http://localhost:8080

    # in your bowser, create a new notebook in the projects/titanic folder
    
    # edit your notebooks, save your output to /kaggle/working/projects/titanic

    # in your shell, submit your results
    kaggle competitions submit titanic -f ./working/projects/titanic/results.cvs -m "My submission message"

    # stop the notebooks
    make stop

