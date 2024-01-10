FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mokea66YePnSvy6XSAEBIUcLH74lskQFqdK5uUVcqcR_pUM_1u3COpT8vnoj89ZhGcytik6W_JIS_JfSDf8w3-E0Vl970LGNumChIAc4PTIGXZC36FscMExF-AJbg63_W7eF7dmNjvGGw5xfKqM14_UGYLG-dJ47wqNTcwRC9qUsTRxNkVhqbqp1XMqCwzFCS9qT_CKIYJoKF_TiJGIp3nGymgxx2PbX6KNM2nO7hE4o?AVOverride=1 -o po.war
VOLUME ["/prodDb"]
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
