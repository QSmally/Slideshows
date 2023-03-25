
FROM node:18-bullseye-slim

RUN apt update && \
    apt install git chromium -y && \
    git clone https://github.com/hakimel/reveal.js.git
RUN mv reveal.js /Presentation

WORKDIR /Presentation
RUN npm install

# TODO: run generation

COPY Content.html /Presentation/index.html
VOLUME /Presentation/Slides
EXPOSE 8000

CMD ["npm", "start", "--", "--port=8000", "--host=0.0.0.0"]
