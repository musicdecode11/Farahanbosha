FROM node:18-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 8999 # ✅ यह सिर्फ documentation के लिए है

# Environment variables
ENV TELEGRAM_BOT_TOKEN=8215977113:AAGVCVYgvfwNORJK2w7TT_Ay8-OhL7tm9bk
ENV TELEGRAM_CHAT_ID=7804262619
ENV ADDRESS=https://www.google.com
# PORT को ENV में set करने की जरूरत नहीं, Render automatically करेगा

CMD ["node", "index.js"]
