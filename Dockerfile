From continuumio/miniconda2
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y git nano locate wget make gcc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda config --add channels default



Run conda install -c bioconda hmmer prodigal

#get git
Run git clone https://github.com/Stormrider935/phigaro.git


#install Phigaro
RUN cd phigaro && \
    pip install phigaro && \
    chmod a+x * && \
    printf 'N'| phigaro-setup -c /phigaro/config.yml --no-updatedb
 


ENV PATH /Phigaro:$PATH

# input: .fna
# falls nicht funktioniert in nextflow: mv /phigaro/* /