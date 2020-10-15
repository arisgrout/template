# Docker file Project Name
# Author, update

# use python:3 as the base image
FROM python:3

# install dependencies
# install numpy, pandas & matplotlib
RUN pip3 install numpy


# Copy src files
COPY src/modules /app
RUN ls -alp /app

# Arguments are defined in python script
CMD ["python3", "/app/modelling/predict.py", "--input_name=/app/input/file", "--output_file=/app/output/predictions/"]

# how to build the docker image
# docker build . -f Dockerfile -t my_first_app

# how to run image locally
# docker run -v /User/Path/repo/input_data/file.tsv:/app/input/file.tsv -v /User/Path/repo/output/predictions/:/app/output/predictions/ my_first_app:latest

# troubleshooting useful command
# docker run -it my_first_app:latest bash
