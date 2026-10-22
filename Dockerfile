FROM nginx:alpine

# Remove the default Nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into Nginx
COPY . /usr/share/nginx/html/

# Expose the Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
