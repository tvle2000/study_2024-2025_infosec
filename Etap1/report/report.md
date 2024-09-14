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

-- Создать новую виртуальную машину, укажать называние и тип операционной системы — Linux, Debian.

![Окно «Называние машины и тип ОС»](https://drive.google.com/uc?id=1ZwcXcxF9GFw6iX0OkESsi1rPFDrdg2UN/)

- Укажать размер основной памяти виртуальной машины - 4096 МБ, и количество процессора - 2.

![Окно конфигурация оборудования](https://drive.google.com/uc?id=1xR4n1Qx9xewP4W_FGKN3FQ_siNGi_OWp)

- Задавать размер диска — 25 ГБ.

![Окно конфигурация виртуального жесткого диска](https://drive.google.com/uc?id=1QapLDFIPqjKxdz1oypfpk9FjNSmMoQYQ)


- Добавить новый привод оптических дисков.

![Окно «Носители» виртуальной машины](https://drive.google.com/uc?id=1T8HGlCh6WWerXRH8Z6aUbsDVrUJ6Y6jw)

- Мы настроим систему для работы по следующему рисунку:

![Выбрать вариант графической установки](https://drive.google.com/uc?id=1GRwclACKjl9HgNkQGBfR7L85BQEW6-0t)

![В разделе «Настройка сети» вводить имя хоста системы](https://drive.google.com/uc?id=1TVMGa2jJzTIQWI0Xn02QQSvScF3LqDSQ)

![Вводить доменное имя](https://drive.google.com/uc?id=1vF6qoK0fC5UCe7JtO-4hbWSdl4PRBW8y)

![Создать учетную запись пользователя, указав его полное имя и имя пользователя](https://drive.google.com/uc?id=1HKBreVfpuFQ5EMUS5h499GdpMO1fyO3b)

![Создать пароль для учетной записи пользователя](https://drive.google.com/uc?id=11FKB82L4IxxC4Qgcx9USArJZmby22Z5O)

![Выбрать способ разбиения жесткого диска](https://drive.google.com/uc?id=1TUD3j8oqJl3RSQEzK-1ZbkRtSxuQcm1F)

![Выбрать диск, который использовать для разбиения.](https://drive.google.com/uc?id=1P5kiM3VxjEbxccO1FqC_DA-oFh3IxbAZ)

![Выбрать схему разбиения](https://drive.google.com/uc?id=1m-hvpXb54DkYx3Web2t12IMtiJ8ownwV)

- Затем выбрать опцию "Finish partitioning and write changes to disk option", потом начинаю установку Kali

![Выбрать среду рабочего стола и инструменты](https://drive.google.com/uc?id=1bPUXdRTB3mnCXDWcKzAzVt1xJPQyAhNy)

![Установить загрузчик GRUB на жесткий диск](https://drive.google.com/uc?id=1BVDtKTKe6EE1_GmET36DLnEGvGSU_W3P)

![Выбрать устройство загрузчика, чтобы убедиться, что вновь установленная система является загрузочной](https://drive.google.com/uc?id=15eNW8qFjuEztoVPK2jjtdhzM65NaKbV9)

- Когда установка Kali завершится, появится сообщение «Установка завершена». Нажать «Продолжить», чтобы перезагрузить виртуальную машину.

![Интерфейс Rocky Linux](https://drive.google.com/uc?id=1QgKX-MMGCGp8xap7Lcm4Qs41AUFHE1lP)
# IV. Вывод

После лабораторной работы я установил операционную систему Kali Linux на виртуальную машину.
