FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mL-VeCcOPH3Hzr8gmMRVFshWnqwtg1Tf_Avv05pyN5dL07WhbOlbVGitnpYp7nA_GEPLotkpyOEls-BEe3GCJJuCPzzD6cAIyokGuHbfZa_BviQo8lDEHzRKDig_BTjahBRbOWHUWX7d_20CNIAKEo2gVmFmIqsxen6R6BQk724mqcZtmS8ep1dUf5UKOrrQph5xBYXMR2PpKdsKNQ_-_Cs2XczTm_ghFglxyyIYK-kk?AVOverride=1 -o po.war
VOLUME ["/prodDb"]
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
