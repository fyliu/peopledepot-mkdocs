## 3. Managing Docker

### 3.1 Stopping Docker

To stop the service-container, but not destroy it (often sufficient for day-to-day work):

```bash
docker-compose stop
```

To stop and destroy the service container:

```bash
docker-compose down
```

Add the `-v` flag to destroy the data volumes as well:

```bash
docker-compose down -v
```

### 3.2 Recycling / Refreshing Database

To restore a database to its original state and remove any data manually added, delete the container and image.
From Docker:

=== "Terminal"
    ```bash
    docker-compose down -v
    ```

=== "Docker Desktop"
    1. Open Containers section
    1. Delete people-db-1 container
    1. Open Images Tab
    1. Remove djangorestapipostrgresql image
