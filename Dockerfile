# Tahap 1: Gunakan base image Nginx yang ringan
# Nginx adalah web server yang sangat efisien untuk menyajikan file statis.
FROM nginx:alpine

# Menyalin file index.html dari folder proyek Anda
# ke dalam folder default Nginx di dalam container.
COPY index.html /usr/share/nginx/html

# Memberi tahu Docker bahwa container akan berjalan di port 80.
EXPOSE 80

# Perintah default yang akan dijalankan saat container dimulai.
# Ini akan menjalankan server Nginx di foreground.
CMD ["nginx", "-g", "daemon off;"]