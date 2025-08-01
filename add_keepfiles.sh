#!/bin/bash

# Agrega .gitkeep solo en directorios vacíos
find firmware drivers rtos iot protocols sensors edge_ai tensorflow_lite onnx_runtime tools docs libs -type d -empty -exec touch {}/.gitkeep \;

# Agrega al staging area
git add .

# Commit y push
git commit -m "Preserva estructura de directorios con .gitkeep"
git push origin main  # Asegúrate de usar tu rama principal (main/master)