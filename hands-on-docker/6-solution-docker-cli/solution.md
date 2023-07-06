# Exercise: docker CLI

1. Start the identicon system:

    - x-cellent.com/identicon:1.0
    - x-cellent.com/dnmonster
    - x-cellent.com/redis

2. Explore the containers by finding their

    - names
    - port mappings
    - volumes
    - IP addresses
    - labels
    - container IDs

3. Save the identicon image as archive to disk

4. Delete the identicon image from local Docker cache

5. Load saved identicon image archive back into local Docker cache

## Solution

1. .
    ```
    docker run -d \
      --name dnmonster \
      --restart=always \
      x-cellent.com/dnmonster:1.0
    
    docker run -d \
      --name redis \
      --restart=always \
     x-cellent.com/redis:1.0
    
    docker run -d \
      --restart=always \
      -p 8080:80 \
      --link dnmonster:dnmonster \
      --link redis:redis \
      x-cellent.com/identicon:1.0
    ```

2. .
    ```
    docker ps | grep dnmonster
    docker ps | grep redis
    docker ps | grep identicon
    
    docker inspect dnmonster
    docker inspect redis
    docker inspect identicon
    ```

3.
    `docker save x-cellent.com/identicon:1.0 -o identicon.image`

4.
    `docker rmi -f x-cellent.com/identicon:1.0`

5.
    `docker load -i identicon.image`
