#image
FROM alpine

COPY .sleep.sh ./app/sleep.sh
WORKDIR /app

#commands
RUN apt update

#port
EXPOSE 80

#bash
CMD bash "sleep.sh"
