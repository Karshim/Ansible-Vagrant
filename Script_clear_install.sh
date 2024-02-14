#!/bin/bash

sudo apt update # Обновляем пакеты
sudo apt install software-properties-common #  Пакет для управления ppa
sudo add-apt-repository --yes --update ppa:ansible/ansible # Добавляем репозиторий
sudo apt install ansible # Ставим ansible
sudo apt install virtualbox # Устанавливаем гипервизор Virtual Box
sudo apt install vagrant # Устанавливаем Vagrant
