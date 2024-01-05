FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mZEmqBzknn47SKfgUhoeQNxpyoRTcOob1YNaDvppxgsRFl07_IV8PWHCBvRXAd1nJy-VbelGc-ufn7pICk_HCy4zaMCVU1cxVCBfmJ7DA31nygnd209gjWxr6LczOaERa9GH7Jh-15flTuzaldrpGdaGi8LEx8AGzxXpl2V_I64bIos0P0je_gwRwhYTemonjOofIyuefFXPk3y_nyySpUSNEOPx08VxoTgbWnW4jZl8?AVOverride=1 -o p.war
 
CMD ["java", "-jar", "p.war"]
EXPOSE 8080
