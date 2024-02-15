FROM python
WORKDIR /app
RUN apt-get update && apt-get install -y libgl1-mesa-glx
COPY . /app
RUN pip install flask
RUN pip install opencv-python
RUN pip install Pillow
EXPOSE 5000
CMD [ "python3", "-u", "main.py" ]
