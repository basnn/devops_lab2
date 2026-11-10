# используем базовый образ node
FROM node:24-alpine

WORKDIR /app

# TODO: необходимо скопировать файлы
# package.json, package-lock.json, которые содержат
COPY package.json .
COPY package-lock.json .
# список зависимостей npm


# TODO: необходимо установить пакеты node_modules
RUN npm install

# TODO: необходимо модифицировать переменную
# PATH таким образом, чтобы в начале содержимого
ENV PATH="/app/.venv/bin:${PATH}"
# переменной PATH была указана директория
# с бинарниками node_modules/.bin

