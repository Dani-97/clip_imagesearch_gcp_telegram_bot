FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noninteractive

# Install SSH server
RUN apt-get update && apt-get install -y openssh-server

# Install git
RUN apt-get install -y git

# Install curl, nano and sudo
RUN apt-get install curl -y && apt-get install sudo -y && apt-get install nano

# Install the gcloud client
RUN apt-get update
RUN apt-get install -y apt-transport-https ca-certificates gnupg curl
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN apt-get update && apt-get install -y google-cloud-cli

# Install Python Virtual Environment
RUN apt-get install -y python3-venv
RUN apt-get install -y python3-pip

# Configure SSH
RUN mkdir /var/run/sshd
RUN echo 'root:your_password' | chpasswd
RUN echo 'ubuntu:your_password' | chpasswd

# Allow root login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

WORKDIR /home/ubuntu/app

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
