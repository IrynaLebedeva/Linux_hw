#!/bin/bash

E_DIR="./even"
UNE_DIR="./uneven"

# Создание директорий 
mkdir -p "$E_DIR"
mkdir -p "$UNE_DIR"

# Создаем 100 файлов со случайными номерами
for i in {1..100}; do
    touch "$UNE_DIR/$RANDOM"
done

# Проверяем и сортируем название файлов на четность
for file in "$UNE_DIR"/*; do
    name_f=$(basename "$file")
    
    if [ $((name_f % 2)) -eq 0 ]; then
        mv "$file" "$E_DIR/"
    fi
done

echo "Чётные файлы перемещены в $E_DIR"

