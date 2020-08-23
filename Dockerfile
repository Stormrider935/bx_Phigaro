FROM tikhonovapolly/phigaro:v2.2.6
RUN /bin/bash -c "/root/miniconda3/bin/pip install phigaro --upgrade"
RUN chmod 777 /*