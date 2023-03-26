
FROM node:18-bullseye-slim

RUN apt update && \
    apt install git chromium -y && \
    git clone https://github.com/hakimel/reveal.js.git && \
    mv reveal.js /Presentation

WORKDIR /Presentation
RUN npm install

RUN mkdir -p /Presentation/Slides

VOLUME /Presentation/Slides
VOLUME /Presentation/index.html
EXPOSE 8000

CMD ["npm", "start", "--", "--port=8000", "--host=0.0.0.0"]
