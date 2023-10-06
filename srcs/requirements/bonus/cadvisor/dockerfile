FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y wget && \
	wget https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64 -O cadvisor && chmod +x cadvisor

ENTRYPOINT ["./cadvisor"]