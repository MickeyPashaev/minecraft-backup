#!/bin/bash
cd /root/MinecraftServer/world

# Добавление файлов в Git
git add .
git commit -m "Автосохранение мира $(date +'%Y-%m-%d %H:%M:%S')"
git push
