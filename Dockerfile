FROM dorowu/ubuntu-desktop-lxde-vnc

ENV USER=root
ENV PASSWORD=root

# Railway expects this
ENV PORT=8080

# Expose Railway port
EXPOSE 8080

# Forward Railway port → container port 80
CMD ["sh", "-c", "sed -i 's/listen 80;/listen $PORT;/' /etc/nginx/sites-enabled/default && nginx -g 'daemon off;'"]
