FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mTOLyb8PPOqbOx6Dmd73YD5JC_V_uEr0IcK8roeODyKaWwvqvkOqxToOBL8ZYq3FtdnyRvx5BQvKwZ6zczAQXu7QszOL4IfzGLILypdwbLbL_UXFgTi3aSQfANUJZj8oC9p2YuZtpdJ8QX-ZP-FUonMX-pCWb2Mz0Lh1M0hs6TMV33BF4P8GyBMaz6nwyseWcNL3BQRBHzQcl1AgERGRaqXg3HrhgUm-kaHwW_EGRGzk?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
