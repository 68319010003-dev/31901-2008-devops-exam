# ใช้ Lightweight Web Server
FROM nginx:alpine

# ลบไฟล์เริ่มต้นของ Nginx ออก
RUN rm -rf /usr/share/nginx/html/*

# คัดลอกไฟล์ HTML เข้าไปใน Container
COPY index.html /usr/share/nginx/html/index.html

# เปิด พอร์ต 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
