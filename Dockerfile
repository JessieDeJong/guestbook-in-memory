FROM node:23-alpine
WORKDIR /guestbook-in-memory
# De inhoud van de map wordt naar de /app gekopierd
COPY /app .
#De -y is ineens antwoord als die vraagt wil jij dit installeren. (yes)
RUN apt-get update && apt-get install -y nodejs npm
RUN npm install
#Dit commando komt op één lijn met spaties (node hello.js)
CMD ["node","app.js"]
#Dit is documentatie om te zeggen dat de poort op 3000 draait
EXPOSE 3000
