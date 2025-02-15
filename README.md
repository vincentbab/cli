# cli

## bashrc
```bash
wget -O ~/.bashrc https://raw.githubusercontent.com/vincentbab/cli/refs/heads/main/.bashrc
```

## vimrc
```bash
wget -O ~/.vimrc https://raw.githubusercontent.com/vincentbab/cli/refs/heads/main/.vimrc
```

## tmux.conf
```bash
wget -O ~/.tmux.conf https://raw.githubusercontent.com/vincentbab/cli/refs/heads/main/.tmux.conf
```

start ssh with tmux:
```bash
ssh USER@HOST -t -- /bin/sh -c "tmux has-session && exec tmux attach || exec tmux"
```

## utilities
Debian 12
```bash
apt update && apt install vim nano htop iotop iftop dnsutils net-tools whois netcat-openbsd iputils-ping curl wget traceroute rsync git ca-certificates grc
```

## docker

https://docs.docker.com/engine/install/debian/

```bash
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do apt remove $pkg; done;
```

```bash
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc; \
chmod a+r /etc/apt/keyrings/docker.asc; \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null; \
apt update
```

```bash
apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
