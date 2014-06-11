## ElasticSearch tuleap Dockerfile

Based on [dockerfile/elasticsearch](http://dockerfile.github.io/#/elasticsearch), this repository allow to build docker image with plugins needed for development.

### Installation & configuration

  1. Create a mountable data directory `<data-dir>` on the host.

  2. Create ElasticSearch config file at `<data-dir>/elasticsearch.yml`.

    ```yml
    path:
      logs: /data/log
      data: /data/data

    script.disable_dynamic: false
    ```

  3. Start a container by mounting data directory and specifying the custom configuration file:

    ```sh
    docker run -d -p 9200:9200 -v <data-dir>:/data enalean/elasticsearch-tuleap /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
    ```

After few seconds, open `http://<host>:9200` to see the result.
