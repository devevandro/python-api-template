FROM continuumio/miniconda3:latest

SHELL ["/bin/bash", "-c"]

WORKDIR /home/app-api

COPY environment.yml ./

ADD . ./app

RUN conda env update -f environment.yml

RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate" >> ~/.bashrc

EXPOSE 8080

CMD ["gunicorn", "--chdir", "app", "-b", ":8080", "app-api:app"]
