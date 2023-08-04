# Ubuntu tabanlı imajı alıyoruz
FROM ubuntu

# Gerekli güncellemeleri yapalım
RUN apt-get update && apt-get upgrade -y

# Baobab ve x11-apps paketlerini yüklüyoruz
RUN apt-get install -y baobab x11-apps

# X11 sunucusuna bağlantı için gereken ayarları yapılandırıyoruz
ENV DISPLAY=:0

CMD bash

