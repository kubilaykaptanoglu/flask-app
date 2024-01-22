# Kullanılacak temel imaj
FROM python:3.8-slim

# Uygulama dosyalarını çalışma dizinine kopyala
WORKDIR /app
COPY app.py /app/app.py

# Flask ve bağımlılıkları yükle
RUN pip install --no-cache-dir flask

# Uygulamayı çalıştır
CMD ["python", "app.py"]