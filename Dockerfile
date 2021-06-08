FROM jupyter/base-notebook:latest

USER root

# Install all OS dependencies for notebook server that starts but lacks all
# features (e.g., download as all possible file formats)
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -yq --no-install-recommends git \
 && apt-get clean  && apt autoremove && rm -rf /var/lib/apt

USER $NB_UID

ADD binder/environment.yml $HOME
ADD binder/postBuild $HOME
RUN conda env update -f environment.yml -n base && conda clean --force --yes --all  && rm $HOME/environment.yml && \
npm cache clean --force \
&& find /opt/conda/ -follow -type f -name '*.a' -delete \
&& find /opt/conda/ -follow -type f -name '*.pyc' -delete \
&& fix-permissions /home/$NB_USER && fix-permissions $HOME \
&& ./postBuild

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
