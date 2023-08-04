## Docker Ubuntu İçine Baobab ve Xeyes kurulumu

Öncelikle Docker servisini tekrar başlatalım

```python
systemctl restart docker
```

## 1-Docker'da Ubuntu Kurulumu

Terminali açıp Ubuntu'yu indirelim.

```python
docker pull ubuntu:latest
```

## 2-Dockerfile oluşturalım

Bir klasör oluşturun ve içinde aşağıdakileri içeren bir Dockerfile oluşturalım ve klasöre gidip terminali açıp çalıştıralım.

```python
# Ubuntu tabanlı imajı alıyoruz
FROM ubuntu

# Gerekli güncellemeleri yapalım
RUN apt-get update && apt-get upgrade -y

# Baobab ve x11-apps paketlerini yüklüyoruz
RUN apt-get install -y baobab x11-apps

# X11 sunucusuna bağlantı için gereken ayarları yapılandırıyoruz
ENV DISPLAY=:0

CMD bash
```

```python
docker build -t <image name> </path/to/your/Dockerfile>
```



## 3- Gerekli izinleri verip çalıştıralım.

```python
xhost +
```

```python
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix <image name>
```

## 4- Uygulamaları açalım.

```python
xeyes
```

```python
baobab
```

