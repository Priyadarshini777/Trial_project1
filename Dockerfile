# Step 1: Use official Nginx lightweight image
FROM nginx:alpine

# Step 2: Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy our custom HTML file into nginx folder
COPY index.html /usr/share/nginx/html/

# Step 4: Expose port 80
EXPOSE 80

# Step 5: Start nginx
CMD ["nginx", "-g", "daemon off;"]
