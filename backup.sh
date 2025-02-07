#!/bin/bash
cd /root/MinecraftServer/world
# Остановка автосохранения на сервере
screen -S minecraft -X stuff "save-off\n"
screen -S minecraft -X stuff "save-all\n"
sleep 5  # Подождем, чтобы мир сохранился

# Добавление файлов в Git
git add .
git commit -m "Автосохранение мира $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main

# Включаем автосохранение обратно
screen -S minecraft -X stuff "save-on\n"
