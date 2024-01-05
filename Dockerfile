FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mL6-KrmxIz1tZyV_-nMzzgnoYO7XUNXkef5iD4l4-MoUajE6qwqGLMes7zJvFiFs-qKVjvoI0W92WCERYYa2u0IkE8XGLeQebcqBUJ4cDI7kOwyAQOgx4EdA0_P6kGzDHd5D3tSR1gYMXolb4YkDLfVsc92tUr53EoxDfv473OGxgnnEdt_eJGx6N3a4-mq9db_SHT7u7MUr9B5JsQL5UR6c3wYnusCWeRquJWDFE0fE?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
