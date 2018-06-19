FROM docker.io/shurley/ansible-operator



COPY . /opt/ansible/roles/busybox/
RUN mv /opt/ansible/roles/busybox/config.yaml /opt/ansible/config.yaml

RUN adduser -D ansible-operator
USER ansible-operator
