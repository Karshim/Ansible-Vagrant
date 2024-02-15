# Ansible-Vagrant

Для развертки данной инфраструктуры необходимо:
1) Компьютер на операционной системе Unix(Linux). Предварительно данная инфраструктура была выполнена на Ubuntu 22.04. 
2) На системе должно быть установлено следующее ПО - Ansible, Vagrant, VirtualBox. 
Для проверки, присутствует ли данное ПО достаточно в командной строке выполнить команду (Ansible --version/VirtualBox --help/vagrant --version)
Если ПО не установлено, то следует установить его. Установка может различаться в зависимости от операционной системы и используемого менеджера пакетов (apt, yum, dnf и другие) 
В репозитории находится скрипт для установки необходимого ПО для менеджера пакетов apt (Debian, Ubuntu) - Script_clear_install.sh
Его достаточно запустить через команду ```./Script_clear_install.sh``` находясь в папке с репозиторием, в процессе выполнения скрипта будет установлено необходимое ПО.

3) По умолчанию, для виртуальной машины с приложением выделены следующие ресурсы:
- CPU - 4 ядра
- RAM - 4 ГБ

Проброшены порты:
- 5000 порт виртуальной машины проброшен на 5000 порт хостовой машины

Для изменения портов или выделяемых ресурсов нужно отредактировать файл Vagrantfile, где:

- vb.memory это параметр, отвечающий за выделением оперативной памяти для ВМ
- vb.cpus это параметр, отвеающие за выделяемые ядра процессора
- пункты config.vm.network отвечают за изменения портов.
  
Для образа ВМ используется fedora, которая скачивается из Vagrant Cloud, могут возникнуть ошибки при скачивании образа, сайт с образами блокируется, нужен VPN для обхода ошибок.

4) Запуск виртуальной машины с разверткой необходимого ПО и приложения осуществляется через вызов ПО Vagrant в указанной папке (репозитории)
Для запуска ВМ нужно использовать команду 
```
sudo vagrant up
```

5) После установки ВМ и автоматической инициализации скрипта Ansible на виртуальной машине будут установлены Python3, Python3-pip, PostgreSQL, проверить работу ВМ нужно командой sudo vagrant status. На виртуальную машину будет проброшена папка python-sample-app с проектом на Python.
```
sudo vagrant status
```

6) По завершению работы скрипта Ansible тестовое приложение будет запущено, о чем будет сообщать статус задачи App is running? - Ок

![image](https://github.com/Karshim/Ansible-Vagrant/assets/142340490/c5b56864-b0e2-40d9-b44f-ab7bd47df9d5)

