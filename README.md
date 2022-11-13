# Description
This repository is an opinionated Visual Studio template for quickly setting up C++ based projects. 

Cookiecutter is used to generate the project folder structure and files and Premake5 is used to generate the project files such as Visual Studio, XCode and Make etc.

# Prerequisites

## Software
- Visual Studio
- Python
- Premake5 (this binary is checked into the template for convenience at \vendor\bin\premake\premake5.exe)

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
- **root_folder_name**: The folder name of the root directory
- **solution_name**: The Visual Studio Solution name
- **project_name**: The Visual Studio Project name
- **project_type**: The name of the project premake will generate (see [list](https://premake.github.io/docs/Using-Premake) of supported projects)

Example Project Structure (after premake is called - see [Create the Visual Studio Solution](#CreateVSSolution)):
```
|- <root_folder_name>   
   |- GenerateProjects.bat
   |- <solution_name>.sln
   |- <project_name>
      |- <project_name>.vxproj
      |- src
         |- main.cpp
      |- vendor
         |- README.md (instructions to add precompiled libraries)
   |- vendor
      |- bin
         |- premake
            |- premake5.exe
            |- LICENCE.txt
   |- Dependencies
      |- README.md (instructions to add source libraries)
   |- .gitignore
```

Navigate into the generate Cookiecutter project directory:
```
cd <solution_name>
```

<a name="CreateVSSolution"></a>Create the Visual Studio Solution:
```
>> GenerateProjects.bat
```

*Optional*

Add the created Cookie cutter project to a Github repository:

```
>> git init
>> git add .
>> git commit -m "Initial commit"
>> git branch -M main
>> git remote add origin <git_url>
>> git push -u origin main
```

# Add third party libraries

- [Add precompiled libraries](./{{cookiecutter.root_folder_name}}/Dependencies/README.md)
- [Add source libraries](./{{cookiecutter.root_folder_name}}/{{cookiecutter.project_name}}/vendor/README.md)