FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mX_FbG1WhQZ5UGvavi-6rax7P2oKn_Vw3jYy5cdM1jjexjAUyn0JJxbvYpkJaw5t0rLR_eGE1tiOeQ11cRbfenMDVpxQJauVQihtlenGVDKrN8A3pMrnZUDo7AcjZpDGJqK3BNAeuHM8cXFEcOA0sladH43_q8GxvWu9Kb0Fxyk5Bn9g4U-RkzmuUb3bortuUmpJHCCRZ2Aesyxozahq17V5NpRW2a5XhqGrb9hVYR-w?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
