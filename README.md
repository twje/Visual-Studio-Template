# Description
This repository is an opinionated Visual Studio template for quickly setting up C++ based projects. 

The templating tool [Cookiecutter](https://cookiecutter.readthedocs.io/) is used to generate the project folder structure, whereas the build configuration tool [Premake](https://premake.github.io/docs/) is used to generate the Visual Studio project files.

The project structure generated from following  [Setup Guide](#SetupGuide) has the directory structure:

```
|- <root_folder_name>   
   |- GenerateProjects.bat
   |- <solution_name>.sln
   |- <project_name>
      |- <project_name>.vxproj
      |- src
         |- main.cpp
      |- vendor
         |- README.md (Steps to add precompiled libraries)
   |- vendor
      |- bin
         |- premake
            |- premake5.exe
            |- LICENCE.txt
   |- Dependencies
      |- README.md (Steps to add source libraries)
   |- .gitignore
```

The arrow syntax `<>` are placeholders that will be substituted by Cookiecutter. And the below directories are added for convenience to incorporate third party libraries:
- [Steps](./{{cookiecutter.root_folder_name}}/Dependencies/README.md) to add precompiled libraries to `<root_folder_name>/Dependencies`
- [Steps](./{{cookiecutter.root_folder_name}}/{{cookiecutter.project_name}}/vendor/README.md) to add source libraries to `<root_folder_name>/<project_name>/vendor`

This template should also work for other project types. To generate a different project select a value for `<project_type>` from the supported Premake project [list](https://premake.github.io/docs/Using-Premake) (caveat: the steps to include third party libraries for non Visual Studio projects may be different).

# Prerequisites

## Software
- [Visual Studio](https://visualstudio.microsoft.com/)
- [Python](https://www.python.org/)
- [Premake](https://premake.github.io/docs/) (this binary is checked into the template for convenience at \vendor\bin\premake\premake5.exe)

## Tools
- [Cookiecutter](https://cookiecutter.readthedocs.io/) - Python package for templating projects.

Install the Python cookiecutter package:
```
>> pip install cookiecutter
```

<a name="SetupGuide"></a> 
# Setup Guide

Create project from templaate with cookie cutter:
```
>> cookiecutter https://github.com/twje/Visual-Studio-Template.git
```

Enter values for the following template tokens:
- **root_folder_name**: The folder name of the root directory
- **solution_name**: The Visual Studio Solution name
- **project_name**: The Visual Studio Project name
- **project_type**: The name of the project premake will generate


Navigate into the generate Cookiecutter project directory:
```
cd <solution_name>
```

<a name="CreateVSSolution"></a>
Create the Visual Studio Solution:
```
>> GenerateProjects.bat
```

*Optional*

Push the generated project to a Github repository:

```
>> git init
>> git add .
>> git commit -m "Initial commit"
>> git branch -M main
>> git remote add origin <git_url>
>> git push -u origin main
```
