#!/bin/bash

echo "📦 Rozpakowywanie projektu..."
unzip ai-video.zip -d ai-video
cd ai-video || exit

echo "⚙️ Instalowanie zależności..."
if [ -f "package.json" ]; then
    npm install
elif [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
elif [ -f "composer.json" ]; then
    composer install
fi

echo "🚀 Uruchamianie aplikacji..."
if [ -f "package.json" ]; then
    npm start
elif [ -f "main.py" ]; then
    python main.py
elif [ -f "index.js" ]; then
    node index.js
fi

echo "✅ Instalacja zakończona!"
