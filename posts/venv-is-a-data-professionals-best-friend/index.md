---
title: "venv is a Data Professional's Best Friend"
author: "Alex Antonison"
date: "2021-02-06"
format:
  html:
    toc: true
    toc-location: right
    toc-title: On this page
---

### Preface

Have you ever tried to share a project with a colleague and they struggled to run it? Have you ever spent hours trying to get a machine learning library to work? If so, there are solutions out there that can help with this!  In this post, I will talk about a utility, virtual environments, that can be used to manage specific packages.

### venv/renv

When starting up a project, the first step I take is to spin up a virtual environment. In python, my personal favorite is the virtual environment utility built directly into python, [python venv](https://docs.python.org/3/tutorial/venv.html). In R, I like to use the package [renv](https://rstudio.github.io/renv/) supported by RStudio. I do this for the following reasons:

* Clean slate: When installing packages in a virtual environment, you can either use the latest versions of packages without worrying about impacting other projects or choose to use specific versions of packages.
* Collaboration: If I am working on a project with others, I can share the virtual environment configuration files, and they can spin up a virtual environment and run my code with the same packages.
* Reproducibility: When I set the project down and I want to pick it up at a later time, I can ensure I am using the same packages as when I first started the project.

For python, you can run:

```bash
cd /path/to/project
# creates the virtual environment
python -m venv venv
# activates the virtual environment in your terminal
source venv/bin/activate
```

Once the environment is created and activated, you can then install all of the packages you need for your project and save them to a `requirements.txt` file that should be included with your project when sharing.

```bash
pip freeze > requirements.txt
```

For R, you can run:

```bash
# You must first install `renv`
Rscript -e "install.packages('renv')"

# Once installed, you can then run
cd /path/to/project
Rscript -e "renv::init()"
```

Once set up and activated, you can start working on your project and install packages as needed. When you are ready to snapshot your environment, you can run the following command:

```bash
Rscript -e "renv::snapshot()"
```

This will update the `renv.lock` file that should be used when sharing your code to allow setting up a new environment from it.  This is most easily used when working with R in a project in RStudio.

### Limitations

While virtual environments are great at managing packages needed to run code, it is limited to just that.  There are other aspects of running a project such as application or operating system dependencies. To completely solve for reproducing the environment for running code, you can explore using [docker](https://www.docker.com/), a utility that will allow for capturing your entire environment which includes the Operating System and supporting applications.  There is a steeper learning curve to this, and I plan on dedicating entire post(s) to the topic of how docker is a more comprehensive solution to reproducibility.

### Other virtual environment tools

For python, [pipenv](https://pipenv.pypa.io/en/latest/) and [poetry](https://python-poetry.org/) are virtual environment utilities that allow for managing various versions of packages in a project.  You can manage packages ranging from selecting a specific version of a package to letting any version of that package be installed.  While these tools can be helpful in managing packages and package dependencies, they come with additional complexity and a learning curve.
