#image
FROM alpine:latest

WORKDIR /app
COPY sleep.sh .

#commands
RUN chmod +x /app/sleep.sh

#port
EXPOSE 8000

#bash
CMD ["bash","sleep.sh"]


# Define the entrypoint to run the script
#ENTRYPOINT ["/app/sleep.sh"]

