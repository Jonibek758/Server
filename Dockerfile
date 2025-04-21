# Node image'dan foydalanamiz
FROM node:18

# Ishchi papkani belgilaymiz
WORKDIR /app

# package.json va package-lock.json fayllarini ko‘chiramiz
COPY package*.json ./

# NPM orqali dependency'larni o‘rnatamiz
RUN npm install

# Qolgan barcha fayllarni ko‘chiramiz
COPY . .

# Server portini ochamiz
EXPOSE 3000

# Serverni ishga tushiramiz
CMD ["npm", "start"]

