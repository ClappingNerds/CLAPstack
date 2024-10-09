FROM pytorch/pytorch:latest
# Set the working directory in the container
WORKDIR /app

COPY /common-scripts/setup.sh /app/setup.sh

RUN chmod +x /app/setup.sh

RUN /app/setup.sh
EXPOSE 22

# Start the SSH server
CMD ["/usr/sbin/sshd", "-D"]
