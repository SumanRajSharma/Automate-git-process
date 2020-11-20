# Git Automate

<!--- These are examples. See https://shields.io for others or to customize this set of shields. You might want to include dependencies, project status and licence info here --->
![GitHub repo size](https://img.shields.io/github/repo-size/sumanrajsharma/automate_git_projects)
![GitHub contributors](https://img.shields.io/github/contributors/sumanrajsharma/automate_git_projects)
![GitHub stars](https://img.shields.io/github/stars/sumanrajsharma/automate_git_projects?style=social)
![GitHub forks](https://img.shields.io/github/forks/sumanrajsharma/automate_git_projects?style=social)
![Twitter Follow](https://img.shields.io/twitter/follow/sumanrajsharma?style=social)

Git Automate is a `bash script` that allows `developer` to do `automate ` certain git processes. 

When a new project is created using command `<create project_name>` it does couple of things
* Creates a directory for a project and navigates to that directory
* Creates a README.md file similar to this (For this add the provided `SAMPLE_README.md` file to your FILEPATH)
* Creates a remote repository in github with same project name
* Initailises git in the project directory
* Creates new connection to remote repository <git remote add origin>
* Performs git add, git commit and push to master


## Prerequisites

Before you begin, ensure you have met the following requirements:
<!--- These are just example requirements. Add, duplicate or remove as required --->
* Define your Git `USERNAME` and `PASSWORD` in .env file of your system
* Also, generate a `GITOAUTHTOKEN` ([Click here for OAuth tokens](https://docs.github.com/en/free-pro-team@latest/github/extending-github/git-automation-with-oauth-tokens#step-1-get-an-oauth-token)) and define gitOAuth token of .env file in your system

## Using the script

To execute the script, follow these steps:

```
# Add execute attribute to the script
> chmod +x automate_git.sh
> create <Name of repository> <Bool: Private repo?> (True for private; False for public)
# Example
> create test_repo true
```

Also, have a look at these variables used in the script:

```
# var 1 ($1): Name of the repo
# Var 2 ($2): private or public repo
# USERNAME: define git username in .env file of your system
# PASSWORD: define git password in .env file of your system
# GITOAUTHTOKEN: define git O Auth token of .env file in your system
# FILEPATH: Path to your project directory
```

## Contributors

* [@SumanRajSharma](https://github.com/SumanRajSharma) 📖

You might want to consider using something like the [All Contributors](https://github.com/all-contributors/all-contributors) specification and its [emoji key](https://allcontributors.org/docs/en/emoji-key).

## Contact

If you want to contact me you can reach me at <sumanrajsharma2014@gmail.com>.
