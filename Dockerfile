FROM dorowu/ubuntu-desktop-lxde-vnc

ENV USER=root
ENV PASSWORD=root

# Railway dynamic port
ENV PORT=8080
EXPOSE 8080

CMD sh -c "sed -i \"s/listen 80;/listen $PORT;/\" /etc/nginx/sites-enabled/default && nginx -g 'daemon off;'"
