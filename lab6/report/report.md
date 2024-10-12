---
## Front matter
title: "Отчёт по лабораторной работе №6"
subtitle: "Мандатное разграничение прав в Linux"
author: "Ле Тиен Винь"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: false # List of figures
lot: false # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage[T2B]{fontenc}
  - \usepackage{indentfirst}
---

# I.Цель работы

Развить навыки администрирования OC Linux. Получить первое практическое знакомство с технологией SELinux.

# II. Выполнение работы

## 1. Подготовка лабораторного стенда

- Задать параметр ServerName в конфигурационном файле /etc/httpd/httpd.conf.

![](https://drive.google.com/uc?id=1G2XyT_TKpfWgi1UuXeEONWeg1iqebitH)

- Проследить, чтобы пакетный фильтр был отключён или в своей рабочей конфигурации позволял подключаться к 80-у и 81-у портам протокола tcp.

![](https://drive.google.com/uc?id=11Mz2IcPtMk1Xwe1o8HcUoWp7OEfuNobW)

## 2. Выполнение работы

- Убедиться, что SELinux работает в режиме enforcing политики targeted с помощью команд getenforce и sestatus.

![](https://drive.google.com/uc?id=10ks0KPUilyxfa9hPjdsEYgWkKH-ZTgTU)

- Проверять, что услуга httpd работает. Если она не работает, то запустить её с параметром start.

![](https://drive.google.com/uc?id=1PpH47d8Bzt9qWB6UtNGuYjzR87YPon1p)

![](https://drive.google.com/uc?id=1EEbR2qd_6jC6uUASdqyyui1LG6IYYrCG)

- Использовать команду ps auxZ | grep httpd, найти веб-сервер Apache в списке процессов. В нем находится контекст безопасности "system_u:system_r:httpd_t:s0", где:

1. system_u — это системный пользователь, который обычно используется для системных служб, управляемых SELinux.

2. system_r — это системная роль, которая позволяет процессам выполнять различные задачи на системном уровне.

3. httpd_t — это тип, используемый Apache HTTP Server (httpd).

4. s0 — это уровень безопасности по умолчанию в SELinux, обычно связанный с несекретными данными.

![](https://drive.google.com/uc?id=1n5MBZtoYiLwnSuxaLY7ExVgM6j4LBYL5)

- Посмотрить текущее состояние переключателей SELinux для Apache с помощью команды.

![](https://drive.google.com/uc?id=1wh31qZUeXgr8zDyUQeVG6UTmj4vMWmfW)

- Посмотрить статистику по политике с помощью команды seinfo, результат даёт количество пользователей, типов, ролей и т.д.

![](https://drive.google.com/uc?id=1srP-JJLAK7_5PAh7Y2gnISBcWgSdAB5j)

- Создать от имени суперпользователя html-файл /var/www/html/test.html следующего содержания.

![](https://drive.google.com/uc?id=1luACK09lULhyov5cqEGJDA7jh8oQX_Xf)

- Обратиться к файлу через веб-сервер, введя в браузере адрес http://127.0.0.1/test.html.

![](https://drive.google.com/uc?id=1cyzidj7BaDsUtU-xUPEc06fEq_9EqWAK)

- Проверить контекст файла test.html можно командой ls -Z /var/www/html/test.html.

1. Поскольку по умолчанию пользователи не ограничены, созданный нами файл test.html был сопоставлен с SELinux, пользователем unconfined_u

2. Роль object_r используется по умолчанию для файлов на «постоянных» носителях и в сетевых файловых системах

3. Тип httpd_sys_content_t позволяет процессу httpd получать доступ к файлустипа, с ним мы получили доступ к файлу при доступе к нему через браузер

![](https://drive.google.com/uc?id=1md_p31kDqLEc8wYYzd61kZPQdmYy_ftf)

- Изменить контекст файла /var/www/html/test.html с httpd_sys_content_t на samba_share_t, которого процесс httpd не иметь доступа.

![](https://drive.google.com/uc?id=1_SCcsohtNQG8NXD7u9fbuNMgy3pngL7w)

- Попробовать ещё раз получить доступ к файлу через веб-сервер, введя в браузере адрес http://127.0.0.1/test.html.

![](https://drive.google.com/uc?id=1gmEACDBiQXY4KXEEPB7vZTl89vrT2Puu)

- Попробовать запустить веб-сервер Apache на прослушивание ТСР-порта 81 и убедиться, что порт 81 появился в списке.

![](https://drive.google.com/uc?id=1ry9i-_yS-pqeGWagEmAWpVh2wwlWQz9P)

![](https://drive.google.com/uc?id=1ak7yykJ0nfuUJP0vLk8_ZLKycja2y6pt)

- Выполнять перезапуск веб-сервера Apache и проанализировать лог-файлы.

![](https://drive.google.com/uc?id=1GkjCDipwVZ9AJDbmVOjdIDbJK5Hwz927)

- Вернуть контекст httpd_sys_cоntent__t к файлу /var/www/html/ test.html.

![](https://drive.google.com/uc?id=13dNSkBhg7QtS21UL-Cg28UDj7IJrapUE)

- Попробовать получить доступ к файлу через веб-сервер, введя в браузере адрес http://127.0.0.1:81/test.html.

![](https://drive.google.com/uc?id=13RXRTPYPe_3TSw9dFC7R57YcuArJXOKM)

- Удалить файл /var/www/html/test.html.

# III. Вывод

После работы я получил практическое знакомство с технологией SELinux и развил навыки работы с ним.