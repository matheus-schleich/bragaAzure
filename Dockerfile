FROM ubuntu:latest
RUN echo "Bom ano a todos"
RUN apt update -y
RUN apt upgrade -y
RUN apt install apache2 -y
WORKDIR app
#Copiar todos os ficheiros para a pasta app
COPY . . 
CMD ["apache2", "start"]
EXPOSE 80
EXPOSE 443


