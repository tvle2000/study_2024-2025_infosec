---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Дискреционное разграничение прав в Linux. Исследование влияния дополнительных атрибутов"
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

Исследовать механизм изменения идентификаторов с помощью битов SetUID и Sticky. Получить практические навыки работы в консолях с дополнительными свойствами. Рассмотрить механизм изменения идентификатора процесса пользователя, а также влияние бита Sticky на запись и удаление файлов.

# II. Выполнение работы

## 1. Подготовка лабораторного стенда

- Установить gcc командой "yum install gcc"

![](https://drive.google.com/uc?id=1UYBc3FxbTScB4M-4M_4J02_xAQ8M1GMT)

- Отключить систему запретов до очередной перезагрузки системы командой "setenforce 0"

## 2. Создание программы и исследование

- Создать программу simpleid.c от имени пользователя guest, которая будет печатать на экране значения UID и GID после запуска

![](https://drive.google.com/uc?id=1wO-aZfoJSto6JXYvAe7dbCvxuZzwY2NT)

- Скомплилировать программу и выполнить программу

![](https://drive.google.com/uc?id=1XXRkL5oigutlZ_wKltgT-Jfv_9WKRe6p)

- Сравнить значения UID и GID, результат программы и команды id одинаковые.

![](https://drive.google.com/uc?id=1CAsNwmVMxITetboBa5a13rJaJqL4O6nY)

- Создать программу simpleid2.c, которая будет печатать на экране значения действительных идентификаторов

![](https://drive.google.com/uc?id=19Kyp3QYtDD1DjJXGPwLFaV1MGWysNbUv)

- Скомпилировать и запустить simpleid2.c, получить значения real UID и real GID

![](https://drive.google.com/uc?id=14Coyjp5ZrqcqOOLdd2ZeYOHMFU1PvptF)

- От имени суперпользователя выполнить команды:

![](https://drive.google.com/uc?id=1H28f11Upcli2XNhqr-7AZMjSL-Ab9_L5)

> "chown root:guest /home/guest/lab/simpleid2" - команда используется для смены владельца файлов и каталогов. Здесь файл "simpleid2" будет принадлежать пользователю «root» и группе «guest»

> "chmod u+s /home/guest/lab/simpleid2" - Бит SetUID устанавливает владельца исполняемого файла. Когда он установлен, файл будет выполняться с идентификатором пользователя владельца файла, а не того, кто его запустил

- Проверять правильность установки новых атрибутов и смены владельца файла simpleid2, здесь владельца является root и группой guest. И атрибут s установлен для пользователя

![](https://drive.google.com/uc?id=1eE0EeesdiJz7HOn4Yh14YeryNp4u1kBx)

- Запустить simpleid2 и id, сравнить результат вывода мы увидем они одинаковые

![](https://drive.google.com/uc?id=1_fd7ucK4oWk1OdX79-PZFYp0v9s1fZOa)

- Проделать тоже самое относительно SetGID-бита

- Установить SetGID Бит для файла

![](https://drive.google.com/uc?id=1fElsUNDWTlXMR_GArQ4zLcgnAqMDyR_U)

- Проверять правильность установки новых атрибутов и смены владельца файла simpleid2, здесь владельца является root и группой guest. И атрибут s установлен для группы

![](https://drive.google.com/uc?id=1sd58YUbqN5Xzm2EhZrQet2IxY8kTtfee)

- Запустить simpleid2 и id, сравнить результат вывода мы увидем они одинаковые

![](https://drive.google.com/uc?id=1MnOUilCpC3NcfB4mys2wVT6-qICj89qA)

- Создать и откомпилировать программу readfile.c, которая читать файл

![](https://drive.google.com/uc?id=1QEGZOF1V_DPhsgKQ0vQyfd3vfXA0r9XP)

- Сменить владельца у файла readfile.c, чтобы только суперпользователь мог прочитать его, a guest не мог, и проверять

![](https://drive.google.com/uc?id=1bIDyFiYaO9hjcz1t8AzdvtSP2wKoXC6i)

![](https://drive.google.com/uc?id=1D-KkcXOE1I91qQJST31kd2JAEwmo-uQa)

- Сменить у программы readfile владельца и установить SetUID-бит и проверять

![](https://drive.google.com/uc?id=1JNomNxZW2tRWhBsOzHccNCMLpsvbmUiP)

![](https://drive.google.com/uc?id=1P0Uya0JL6GrH_hdvzzaBZLKhORWUQbzm)

- Проверять, может ли программа readfile прочитать файл readfile.c

![](https://drive.google.com/uc?id=1W0J3ppwYb_dqKYb4Fnov7_KBiijKMTW7)

- Проверять, может ли программа readfile прочитать файл /etc/shadow

![](https://drive.google.com/uc?id=1RsLcjerSk4RoczkTaGq2WqUCBJp3tgiS)

## 3. Исследование Sticky-бита

- Проверять установлен ли атрибут Sticky на директории /tmp командой "ls -l / | grep tmp"

![](https://drive.google.com/uc?id=1ydKULwGZeJXcQiZDG2S7DntjzTtvkT8x)

- От имени пользователя guest создать файл file01.txt в директории /tmp со словом test

![](https://drive.google.com/uc?id=1mtrvYOtlhZjm8AxWJOz2VYgfNrjtRg_S)

- Разрешить file01.txt прав чтения и записи для категории пользователей «все остальные»

![](https://drive.google.com/uc?id=1WnC9qswHF1BK5w5AArg-rTUeN551bguN)

- От пользователя guest2 (не является владельцем) попробовать прочитать файл /tmp/file01.txt

![](https://drive.google.com/uc?id=1PTlsH32AIU4PlgfHllLUkHXSWpJp4849)

- От пользователя guest2 попробовать дозаписать в файл /tmp/file01.txt слово test2, и нам не удалось выполнить операцию

![](https://drive.google.com/uc?id=1vK52OzgulA7yffo8d8CkrUvKi22GkTAL)

- От пользователя guest2 попробовать удалить файл /tmp/file01.txt, и нам не удалось выполнить операцию

![](https://drive.google.com/uc?id=1oH4rJ_SiJOKiCG6djDJ_QTohVNqTsljY)

- Снимать атрибут t (Sticky-бит) с директории /tmp от имени суперпользователя

![](https://drive.google.com/uc?id=1yWpMbaja8JuXGN7hcw0h7I63PHpGsjk1)

- От пользователя guest2 проверять, что атрибута t у директории /tmp нет

![](https://drive.google.com/uc?id=1N41lK9xcKaaDIE1G2YpgzPE8L_gwakZf)

- Снова от пользователя guest2 попробовать дозаписать в файл /tmp/file01.txt слово test2, и нам не удалось выполнить операцию

![](https://drive.google.com/uc?id=1k6PxNhekOu1_yGLLfl-bfEITYM08bBK4)

- Снова от пользователя guest2 попробовать удалить файл /tmp/file01.txt, и нам удалось выполнить операцию

![](https://drive.google.com/uc?id=1AS8l00cTrPunD65cl44hrjamwvF5jxoj)

- Вернуть атрибут t на директорию /tmp от имени суперпользователя

# III. Вывод

После лабораторной работы я получил практические навыки работы в консолях с дополнительными свойствами.
