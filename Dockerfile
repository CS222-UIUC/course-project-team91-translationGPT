#Base Image to use
FROM python:3.8.16-bullseye

# Add fonts into the container
COPY fonts ./fonts
RUN mkdir -p /usr/local/share/fonts/truetype
# COPY ./fonts/*.ttf /usr/local/share/fonts/truetype/
COPY ./fonts/*.otf /usr/local/share/fonts/truetype/
COPY ./fonts/*.ttc /usr/local/share/fonts/truetype/
RUN fc-cache -f -v
RUN rm ./fonts/*.otf
RUN rm ./fonts/*.ttc

#Expose port 8080
EXPOSE 8080

#Optional - install git to fetch packages directly from github
RUN apt-get update && apt-get install -y git

#Copy packages.txt file into app directory
COPY packages.txt app/packages.txt

#install all packages in packages.txt
RUN xargs -a app/packages.txt apt-get install -y

#Copy Requirements.txt file into app directory
COPY requirements.txt app/requirements.txt

#install all requirements in requirements.txt
RUN pip install -r app/requirements.txt

# Quick fix for pytube
RUN sed -i 's/transform_plan_raw =.*/transform_plan_raw = js/g' /usr/local/lib/python3.8/site-packages/pytube/cipher.py



#Copy all files in current directory into app directory
COPY . /app

#Change Working Directory to app directory
WORKDIR /app

#Run the application on port 8080
ENTRYPOINT ["streamlit", "run", "local_app.py", "--server.port=8080", "--server.address=0.0.0.0"]