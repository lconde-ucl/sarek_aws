FROM public.ecr.aws/amazoncorretto/amazoncorretto:11

RUN curl -s https://get.nextflow.io | bash && mv nextflow /usr/local/bin/

RUN yum install -y git python-pip curl jq

RUN pip install --upgrade awscli

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

VOLUME ["/scratch"]

CMD ["/usr/local/bin/entrypoint.sh"]
