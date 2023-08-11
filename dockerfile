#image
FROM alpine

WORKDIR /app
COPY ./sleep.sh .


#commands
RUN apt update

#port
EXPOSE 80

#bash
CMD bash "sleep.sh"
