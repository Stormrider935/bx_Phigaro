From continuumio/miniconda3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y procps git locate wget make gcc && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda config --add channels default



Run conda install hmmer prodigal

#get git
Run git clone https://github.com/bobeobibo/phigaro.git


#install Phigaro
#     printf "1\n1\nn" | phi.....  beantwortet alle fragen
RUN cd phigaro && \
    pip install phigaro && \
    chmod a+x * && \
    printf "1\n1\nn"  phigaro-setup --no-updatedb
  #  phigaro-setup --no-updatedb 


# datenbank download dauert 30 min 

ENV PATH /Phigaro:$PATH

# 
# phigaro -f /phigaro/test_data/Bacillus_anthracis_str_ames.fna -e txt html stdout -o result
#ergebnisdatei ist result