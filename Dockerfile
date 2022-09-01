# the image is base on the python:3.7 image
FROM python:3.7

# create a workfolder in the imade to make sure all the work is done in the folder 
WORKDIR /app

# install pandas for the python script
RUN pip install pandas==1.3.5

# add python script into the image 
ADD py_script.py .

# create container volume mounting to host dir so that the pythin script can read and write from host
VOLUME /app/input
VOLUME /app/output

# create environment variables for python script
ENV INPUT_DIR='/app/input'
ENV OUTPUT_DIR='/app/output'

#make sure 
CMD tail -f /dev/null

