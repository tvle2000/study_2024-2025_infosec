---
## Front matter
title: "Отчёт по Индивидуальному проекту"
subtitle: "Этап 1. Установка Kali Linux"
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
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# I.Цель работы

Установить операционную систему на виртуальную машину.

# II. Выполнение задания

- Создать новую виртуальную машину, укажать называние и тип операционной системы — Linux, Debian.

![Окно «Называние машины и тип ОС»](1.JPG)

- Укажать размер основной памяти виртуальной машины - 4096 МБ, и количество процессора - 2.

![Окно конфигурация оборудования](2.JPG)

- Задавать размер диска — 25 ГБ.

![Окно конфигурация виртуального жесткого диска](3.JPG)

- Добавить новый привод оптических дисков.

![Окно «Носители» виртуальной машины](4.JPG)

- Мы настроим систему для работы по следующему рисунку:

![Выбрать вариант графической установки](5.JPG)

![В разделе «Настройка сети» вводить имя хоста системы](6.JPG)

![Вводить доменное имя](7.JPG)

![Создать учетную запись пользователя, указав его полное имя и имя пользователя](9.JPG)

![Создать пароль для учетной записи пользователя](10.JPG)

![Выбрать способ разбиения жесткого диска](11.JPG)

![Выбрать диск, который использовать для разбиения.](12.JPG)

![Выбрать схему разбиения](13.JPG)

- Затем выбрать опцию "Finish partitioning and write changes to disk option", потом начинаю установку Kali

![Выбрать среду рабочего стола и инструменты](15.JPG)

![Установить загрузчик GRUB на жесткий диск](16.JPG)

![Выбрать устройство загрузчика, чтобы убедиться, что вновь установленная система является загрузочной](17.png)

- Когда установка Kali завершится, появится сообщение «Установка завершена». Нажать «Продолжить», чтобы перезагрузить виртуальную машину.

![Интерфейс Rocky Linux](14.JPG)
# IV. Вывод

После лабораторной работы я установил операционную систему Kali Linux на виртуальную машину.
