#!/bin/bash
# var 1 ($1): Name of the repo
# Var 2 ($2): private or public repo
# USERNAME: define git username in .env file of your system
# PASSWORD: define git password in .env file of your system
# GITOAUTHTOKEN: define git O Auth token of .env file in your system
# FILEPATH: Path to your project directory
function create(){
    variable_regex='^[a-zA-Z_$][a-zA-Z_$0-9]*$'
    if [ -z "$2" ]
    then 
        2='false' 
    fi
    if [ -z "$1" ]
    then 
        echo 'Project name cannot be blank please enter some text' 
    else
        if ! [[ "$1" =~ "$variable_regex" ]]
        then 
            echo "Invalid project name: Project name must start with albhabets followed by numbers/underscore." 
        else
            source ~/.env
            curl -H "Authorization: token $GITOAUTHTOKEN" https://api.github.com/user/repos -d '{"name":"'$1'","private":'$2'}'
            echo "=================== Remote repository created sucessfully..."
            mkdir -p $FILEPATH/$1
            cd $FILEPATH/$1
            git init
            git remote add origin git@github.com:$USERNAME/$1.git
            echo "=================== Created a new connection to remote repository created sucessfully..." 
            cp $FILEPATH/SAMPLE_README.md $FILEPATH/$1/README.md
            sed -i -e "s/USERNAME/${USERNAME}/g" README.md
            sed -i -e "s/PROJECT_NAME/${1}/g" README.md
            # creates 'README.md-e' temp file which is not needed
            rm -rf $FILEPATH/$1/README.md-e
            git add .
            git commit -m "Initial commit"
            git push -u origin master
            echo "=================== git push operation completed sucessfully..."
            code .
        fi
    fi
}
