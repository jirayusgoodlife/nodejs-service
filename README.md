# HOW TO USE

หลังจาก `docker-compose up -d --build` แล้ว ให้ใช้คำสั่ง `docker exec -it nginx sh` เพื่อเข้าไปยัง contrainer nginx 
หลักจากเข้า contrainer ได้แล้วให้ใช้คำสั่ง `npm install และ nodemon index.js` เพื่อสั่งให้ node ทำงาน ถ้าทำงานได้เวลาเข้า http://localhost:81 จะมีคำว่า TAKEHOME API
และทำตามในส่วนของ การ connect database และทำ api ให้ครบทั้ง 4 ตาราง ดูตัวอย่างได้ที่ 
https://dev.to/nurofsun/building-simple-rest-api-with-express-js-and-mysql-140p
