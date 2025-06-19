#FROM nginx:alpine
#COPY . /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"



FROM nginx:alpine

# Modify default config to use port 8080 instead of 80
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf

# Copy website files
COPY . /usr/share/nginx/html

# Expose the correct port
EXPOSE 8080

