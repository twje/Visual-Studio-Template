# Description
This repository is a Visual Studio template for quickly setting up C++ based projects. 

Cookiecutter is used to generate the project folder structure and files and Prmake5 is used to generate the Visual Studio Solution.

# Prerequisites

## Software
- Visual Studio
- Python

## Tools
- Cookiecutter - Python package for templating projects.

Install the Python cookiecutter package:
```
>> pip install cookiecutter
```

# Setup Guide

Create project from templaate with cookie cutter:
```
>> cookiecutter https://github.com/twje/Visual-Studio-Template.git
```

Enter values for the following template tokens:
- **solution_name**: The Visual Studio Solution name
- **project_name**: The Visual Studio Project name
- **project_type**: The name of the project premake will generate (see [list](https://premake.github.io/docs/Using-Premake) of supported projects)

Navigate into the generate Cookiecutter project directory:
```
cd <solution_name>
```

Create Visual Studio Solution:
```
>> GenerateProjects.bat
```

*Optional*

Add the project created by Cookie cutter as a Github repository:

```
>> git add .
>> git commit -m "Initial commit"
>> git branch -M main
>> git remote add origin <git_url>
>> git push -u origin main
```

