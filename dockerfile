#image
FROM alpine:latest

WORKDIR /usr/local/bin/
COPY ./sleep.sh .

#commands
RUN chmod +x /usr/local/bin/sleep.sh

#port
EXPOSE 80

#bash
CMD bash "sleep.sh"


# Define the entrypoint to run the script
#ENTRYPOINT ["/usr/local/bin/myscript.sh"]
