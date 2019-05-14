FROM buildkite/puppeteer:v1.15.0

ENV HOME /app
WORKDIR $HOME

RUN mv /node_modules $HOME/node_modules
COPY package.json package-lock.json $HOME/
RUN npm i
COPY . $HOME
CMD npm start
