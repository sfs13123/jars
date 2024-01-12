FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN apt install -y tesseract-ocr
RUN curl -L https://public.bl.files.1drv.com/y4mIJewpPfbKZXPYDZMDX97xcJewYsfajd28-0RqgLB--HmoANDEqx3BbKcIfcwWzKKBi2QipSd0_zUHAqweL3u9AkZbxk-2z1fGb5VuhfmG1D1iMOVzpdHhFbkuLmiPzjaA9wDhh__FRGpvyX6YngKIt18yAX7TABWezxZY-kqemcZiZjuXenQDnG2P03glVD_t-LYJtvlUsfWvSLlq0ABozO53kRp-hmP2SNNpSwTFOI?AVOverride=1 -o po.war

CMD ["java", "-jar", "po.war"]
EXPOSE 8080
