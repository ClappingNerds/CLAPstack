FROM pytorch/pytorch:2.4.1-cuda11.8-cudnn9-devel
# Set the working directory in the container
WORKDIR /app

COPY /common-scripts/setup.sh /app/setup.sh

RUN chmod +x /app/setup.sh

RUN /app/setup.sh

EXPOSE 22

# Start the SSH server
CMD ["/usr/sbin/sshd", "-D"]
