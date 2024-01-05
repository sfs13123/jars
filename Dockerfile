FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4mErfjb3VHoENCSBzL6tKLX9PSvBMPh_2cECNdMU8BQQ554ejnf0RH1zPEOSvWgJKaDYAQTJWFWmGVtS3HEd1HkJAOkZWpwZBeQ93ihYucdewcA3B1enfD3ZJldFPEKWNj7LXAxh6w4vkREmuBBrYVs4t4mtiscAH5fbI3VsHxfATcVR9FF_5RlYyPDf-OSTlvnbSPMPea5kbjdOYFVRrVBg1YUIZcv_A7l7JtNFG62OE?AVOverride=1 -o po.war
 
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
