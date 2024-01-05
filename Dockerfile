FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mBFEr4Whe-_-yrbJDmvEO9o96aRYSi6D-8PMTnGqTkYAU33tvqDDBzfibZ7Cr3or-Ztt205MRj_00EdpO5euWYC1cRwDhvzvgu14xPZwAwWLi11kH65VXjfArBXCY0h0U7l-TEPo1XmNKeL5-HQONkyedmJjmFvkh70dwxIjC-8TOQ5V93hNm4oRrWC5PAaC7NCwkTF5IbWd35uq_d6_8m2q3ppj9BtCrNVmjWXcSvPQ?AVOverride=1 -o p.war
 
CMD ["java", "-jar", "p.war"]
EXPOSE 8080
