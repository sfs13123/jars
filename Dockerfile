FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN apt install -y tesseract-ocr
RUN curl -L https://public.bl.files.1drv.com/y4mDJIi864CVFH6eQj1XKv-sddHr-p_T44DnrtffhlZlnL3qATB6i4iMQ5S_AnczjLKfiplI5K7Qmi88Ek9iBSlK1kNImp3I7-IHWss2Zuf1k8PxGZ45RUZbqak_z30rMKOj8FVjdj5EPF4sFdTtVNlw9_9FW5rFpEM41rXvnfKuhg94d6NVipK2LTg_ff7Z1CEe-d2Xakkz4MrG6lJh0VIV2-Bbl6FMs6bDHwpHur8-wI?AVOverride=1 -o po.war
ENV LD_LIBRARY_PATH=/usr/local/lib
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
