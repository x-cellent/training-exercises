#!/usr/bin/env bash

# 1) Start a nginx server as container (nginx)

docker run -d -p 8080:80 nginx
# visit http://localhost:8080 

# 2) Connect to the container

docker exec -it <your-container> /bin/bash

# 3) Change the website (/usr/share/nginx/html/index.html) on runtime

echo "hallo docker" > /usr/share/nginx/html/index.html
exit

# OR

docker exec -d <your-container> /bin/bash -c "echo 'hallo docker2' > /usr/share/nginx/html/index.html"

# 4) Verify the change by visiting the website before and after the modification

# Worked!

