#
# ElasticSearch Dockerfile
#
# https://github.com/dockerfile/elasticsearch
#
 
# Pull base image.
FROM dockerfile/elasticsearch

# Install mapper
RUN /elasticsearch/bin/plugin -install elasticsearch/elasticsearch-mapper-attachments/2.0.0

# Install head (development)
RUN /elasticsearch/bin/plugin -install mobz/elasticsearch-head
