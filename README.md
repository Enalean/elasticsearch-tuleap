## ElasticSearch Tuleap Development Dockerfile

Based on the official [ElasticSearch image](https://hub.docker.com/_/elasticsearch/),
two plugins have been added:
 * [Mapper Attachments Type](https://github.com/elastic/elasticsearch-mapper-attachments) used
 to index file attachments
 * [elasticsearch-head](https://mobz.github.io/elasticsearch-head/) which is a web front end
 for an ElasticSearch cluster. It's an useful tool in a dev env.

### Access to the web front end
The web front end could be accessed through this URL: http://<your_docker_instance>:9200/\_plugins/head/

### Usage
A Docker Compose file is provided with the Tuleap sources, you should probably
use it.

If you really do not want to use Docker Compose, you could probably do something like that:
    ```sh
    docker run -d -p 9200:9200 -Des.script.disable_dynamic=false
    ```
