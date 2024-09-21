---
## Front matter
title: "Отчёт по Индивидуальному проекту"
subtitle: "Этап 2. Установка DVWA"
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

Установить и настроить DVWA в систему к Kali Linux.

# III. Выполнение работы

- В консоли перейти в директорию /var/www/html (это директория по умочанью вев-сервера) и клонировать DVWA git-директория.

![](https://drive.google.com/uc?id=1LAKQpRyz8yze3ePEwCKKZQ3vunuS4rTh)

![](https://drive.google.com/uc?id=11ISTDRhkU9Vwk5tFxt4EGsy0VW5iTkWI)

- Настроить доступ директории DVWA, что DVWA полностью доступным для чтения, записи и исполнения для всех.

![](https://drive.google.com/uc?id=1iIGQfTC42h5nMPcG5w8l2dfKW-fCDRll)

- Скопировать файл конфигурации /var/www/html/DVWA/config/config.inc.php.dist на config.inc.php.

![](https://drive.google.com/uc?id=1gFtECvh-sm3vXmqEBFZuRJD8GRXH-L5h)

- Поменять имя и пароль пользователя в файле конфигурации config.inc.php.

![](https://drive.google.com/uc?id=1xNg4-2YpNbZbSL1ftLyGi4EpHruTSxO-)

- Запустить базу данных в консоли и проверять статус базы данных.

![](https://drive.google.com/uc?id=12WLr_vBk73Upgf31RtTz-5QtQvzxfAAm)

![](https://drive.google.com/uc?id=1gol-leImKrWYodhITgvl1u263EDM4uK4)

- После того, войти в базу данных.

![](https://drive.google.com/uc?id=1_rtmKVoz-iAd5x6gDocmD62Cb7aXPXem)

- Создать базу данных с именем dvwa.

![](https://drive.google.com/uc?id=1jjdJitSPGBYzLdXAgIv9FIzqMrXvkwSf)

- Cоздать пользователя и пароль (должны совпадать с именем пользователя и паролем в файле конфигурации).

![](https://drive.google.com/uc?id=1EbbLCZMiXiB1AeFJujBDiwPf56ju_Kav)

- Предоставить все привилегии этому пользователю.

![](https://drive.google.com/uc?id=1wZXFVOGqDD41tJk2CPJ6wDskXWJs3m7j)

- Запустить и проверять статус веб-сервер Apache2.

![](https://drive.google.com/uc?id=1B4u09mi4Z4PItRBPOibxREbpYwtJaAil)

![](https://drive.google.com/uc?id=1TWhMEYbTyc_Mv0w0J_RlQ2J7kLIRDkEz)

- Поменять файл конфигурации /etc/php/8.2/apache2/php.ini как следующий.

![](https://drive.google.com/uc?id=1rxq2N6ljl8S1ZkAjM4ghU9Nsn4BFLnRB)

- Перезагрузить веб-сервер Apache2.

![](https://drive.google.com/uc?id=1l1n8zfYC-hBVMdAoqDH165hVJJJeTdBC)

- В браузере войти в ссыльку "127.0.0.1/DVWA" и вводить username и пароль, DVWA готов для использования.

![](https://drive.google.com/uc?id=16UDHLgZGHk3fVEWh1BHVG5RPqZWKYjF4)

# IV. Вывод

После этой лабораторной работы я установил и настроил DVWA в систему к Kali Linux.

