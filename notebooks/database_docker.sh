docker run -d \
           --rm \
           --name postgres_db \
           -e POSTGRES_PASSWORD=1234 \
           -e POSTGRES_DB=food_web_scrapping \
           -v "$PWD"/dbdata:/var/lib/postgresql/data \
           --net="host" \
           postgres:latest