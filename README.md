[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)
 \- Test your build status - 

# Name of project
## Objective

Project to create a



## Contributors

This project is an open project, and contributions are welcome from any individual.  All contributors to this project are bound by a [code of conduct](CODE_OF_CONDUCT.md).  Please review and follow this code of conduct as part of your contribution.

  * [Name1](website)
  * [Name2](website)


### Tips for Contributing

Issues and bug reports are always welcome.  Code clean-up, and feature additions can be done either through branches.
Any official communication for this project will be done using Github Issues.

All products of the Mid Project are licensed under an [MIT License](LICENSE) unless otherwise noted.

## How to use this repository

Files and directory structure in the repository are as follows:
This structure might be modified as the project progresses.

```bash
org/repo/
├── input_data
│   ├── file1.csv                              # data
│   ├── data_dict.csv                          # data dict
│   └── preprocessed_data.csv                  # preprocessed  data
├── figures_and_milestone_reports              # all docs (img/pdf)
│   ├── img
│   └── docs
│   ├── ├── milestone1.pdf
│   └── └── presentation.pptx                       
├── src    
│   ├── modules                                # all modules for the package
│   │   ├── preprocessing     
│   │   │   └── data_preprocessing.py          # script that processes data
│   │   ├── modelling                          
│   │   │   ├── model.py                   # script that creates trains model
│   │   │   └── predict.py                 # script to do predictions on new data
│   │   └── other_data_product             # dashboard/ notebook?     
│   │   └── └── plotly_dashbhoard.py       # maybe a dashboard or some other product?
│   ├── tests                              # all tests for the modules
│   │   ├── test_data_preprocessing.py                                   
│   │   ├── test_model.py                         
│   └── └── test_predict.py             
├── output                                 # all modules for the package
│   ├── predictions                          
│   │   └── predictions.csv                # File of predicted tags
│   └──  profiling                         # if you do any profiling on your files
│   └── └── profiling_model.txt            # File with detailed profile of model script
├── .gitignore
├── CODE_OF_CONDUCT.md                     # You can design your own.
├── Dockerfile                             # For reproducibility
├── LICENSE                                # Usually a MIT
└── README.md                              # This file
```

### Workflow Overview

Describe how your data pipeline flow is:
* What files do you use as input and what they contain (where is the dictionary)

These files are used as input in a ML model that, once trained, should:
* Predict something

### System Requirements

This project is developed using Python.  
It runs on a MacOS system.
Continuous integration uses TravisCI.

### Data Requirements

The project pulls data from ?
For the sake of reproducibility, three dummy data files have been included.
* Sometimes it is not wise to put all the data in Github. It might be confidential or a super heavy file.

### Key Outputs

This project will generate something that provides the following information:
*
*
*

## Pipeline
The current pipeline that is followed is:

** Input some flow chart/diagram that explains your model


### Instructions

There are currently two main functionalities for this repo.
The first one is to creare predictions.

If you want to use docker:

##### Docker Instructions

1. Clone/download this repository.
2. Using the command line, go to the root directory of this repository.
3. Get the Docker image from [DockerHub](https://hub.docker.com/) from the command line:
```
docker pull user1/my_first_app
```
4. Verify you are in the root directory of this project. Type the following (filling in *\<Path_on_your_computer\>* with the absolute path to the root of this project on your computer).

```
docker run -v /Your/full/path/repo/input_data/:/app/input -v /Your/full/path/repo/output/:/app/output/ user1/my_first_app:latest
```

5. Navigate through the predictions csv and do your analysis.

**IMPORTANT:** In order to run this docker file, you need to load in the `data` directory a that respect the same format as the dummy files.


##### Without Docker and to review other scripts.

This repository consists of x Python scripts.

In order to run this project, you need to:
1. Clone or download this repository.

2. Run the following code in the terminal at the project's root repository.
To run the scripts:

```
# From the command line.

# Load data and Exploratory Data Analysis
python3 src/modules/preprocessing/data_preprocessing.py

# Train model or use trained model for inference
python3 src/modules/modelling/model.py

# Predict on new data
python3 src/modules/modelling/predict.py

# Summarize and visualize data
python3 src/modules/dashboard/dashboard.py

# To visualize in your browser, enter the following http address.
http://127.0.0.1:8050/
```

##  Profiling
Detailed profiling logs can be found on:
```
output/profiling
```
