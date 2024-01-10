FROM openjdk:21-slim-buster
RUN apt update
RUN apt install -y curl
RUN curl -L https://public.bl.files.1drv.com/y4m3v-5g6bbo0hak-3zTCapbFtXMtV4CqYXrezPJfhVsiQIKukOUBUO5AEZcsObkHbF1tMiZV1x3Og6rcworC3-0-oQc4ll0hm_bt_XuN9i_Lwbm1sp2lZ0tXFbOXPqxEwnn6O-5h_VUaKtT8SCND2WvH1GeQHnPMd9BqKsTMquTkjh-kF7X8AiKiBUnI3xLaxoHrzFfo_4RwzDCEtPoihWZuHwsHhOzh3h3C42WTAA6DU?AVOverride=1 -o po.war
VOLUME ["/prodDb"]
CMD ["java", "-jar", "po.war"]
EXPOSE 8080
