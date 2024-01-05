FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mfbLxJLrSS0GA7yd06Nn0JZW1wtMGdqX-z39IxwcURXvMc1CZfTHcyEImeYc2ZKSa_k1vE2JwItcuEhnZAlGXIfUF5vXD-vvjygCOxPtvAp1qzu7EEB_ZPauNb7nzVSJoP1MzluGzNbsRgeRxmyu9LdSgfm1Hl9l_0YXNs2BBydEhFjoJ0OGsuaeSwd5Emo-PaSu5E26l3UpxANTvJVSx9EvVS0fl5Kioekg5VRlCjYQ?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
