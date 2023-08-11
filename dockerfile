#image
FROM alpine

WORKDIR /app
COPY ./sleep.sh .


#commands


#port
EXPOSE 80

#bash
CMD bash "sleep.sh"
