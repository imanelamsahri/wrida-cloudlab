#!/bin/bash

echo "🌍 Lancement de JupyterLab..."

# Lancer JupyterLab sur le port 8888 accessible publiquement
jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=''
