FROM ubuntu:16.04

RUN apt-get update && \
apt-get install -y software-properties-common && \
apt-add-repository --yes --update ppa:ansible/ansible && \
apt-get install -y netcat openssh-server iputils-ping ansible vim && \
mkdir /var/run/sshd && \
chmod 0755 /var/run/sshd && \
useradd -p $(openssl passwd -1 u2pass) --create-home --shell /bin/bash --groups sudo u2

EXPOSE 22

COPY ansible /etc/ansible

CMD ["/usr/sbin/sshd", "-D"]
