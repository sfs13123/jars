FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mI6y4fp1sQ_kyNnSAyIk_021u5pnTqEzNyxr4ktJ4PGuJyxQhjKrq6Q4N2xtg_vn85-6PGK4kuJYokiZdrYHG3mHmhQGqM8cxkFWYtp8pzcLHYodTzvNkl1kEOpkzDQ48E27iVMQN336i7OmjClga7lewD5ml54GkpSGfN77V06zpRM4cElOd_odQXtPNyveJ-fyygb7bIKYB7h8p4sKZaglQKg0w3clj-xjJNi16WPo?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
