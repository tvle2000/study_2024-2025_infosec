---
## Front matter
title: "Отчёт по лабораторной работе №4"
subtitle: "Дискреционное разграничение прав в Linux. Расширенные атрибуты"
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

Получить практические навыки работы в консоли с расширенными атрибутами файлов.

# III. Выполнение работы

- При определении расширенных атрибут файл от имени guest, мы получил отказ от системы.

![](https://drive.google.com/uc?id=17gAfpVGLezTWbSSwXD8RCqTxmIVXKg4t)

- При устаноки команды chmod 600 file1 на файл file1 права, разрешающие чтение и запись для владельца файла от имени guest, мы получил отказ от системы.

![](https://drive.google.com/uc?id=16ovBhK-AkcuF4Cj6roXQH3T_6h03xfOZ)

- И при устаноки на файл /home/guest/dir1/file1 расширенный атрибут a от имени пользователя guest, мы получил отказ от системы.

![](https://drive.google.com/uc?id=1K28h_MiaJNCopPpnoQpDXb0fKkgrHSLY)

- От имени администратора мы установили расширенный атрибут a на файл /home/guest/dir1/file1.

![](https://drive.google.com/uc?id=1RCDOUCGqweE631M3yjJsdGzLCs8vGX3j)

## 1. После устаноки расширенный атрибут a на файл

- При проверки правильность установления атрибута от пользователя guest, мы получил отказ от системы, поэтому мы проверим от имени администратора.

![](https://drive.google.com/uc?id=1khpgkwUDoY7QfOnASzwBYA70hvr2we6I)

![](https://drive.google.com/uc?id=1dEaxPBHiRA3Oe4r_rnCQcPjtoRltgKIz)

- Выполнить дозапись в файл file1 слова «test» и проверять командой cat.

![](https://drive.google.com/uc?id=1v2wkiRz-cbNXWcK1Pb-0KGCqRvNRk9nG)

![](https://drive.google.com/uc?id=14qKDYkm9ZGvB7m2Pm1OV6n_zU53kCTMg)

- При выполнении дозаписи в файл file1 слова «abcd» и переименовании файл, мы не можем это сделать.

![](https://drive.google.com/uc?id=1wWmELFnf_eGDGzSXnBiib-6eq_Tuvh80)

![](https://drive.google.com/uc?id=1akxrk8_uYefZf24BXDkYI0ud9RlWMLiv)

- И при устаноки команды chmod 000 file1 и chmod 600 file1 на файл file1, мы получил отказ от системы.

![](https://drive.google.com/uc?id=1dKWfHVU8Ztq3_RoEvn7pk5b_lYyY57YN)

![](https://drive.google.com/uc?id=1cZc-J4uxdrlqbtc0uLvCpFWR02ihaM9s)

- Снимать расширенный атрибут a с файла /home/guest/dirl/file1.

![](https://drive.google.com/uc?id=1bDH1iGQKFkg2F7yOKO5s_PLStNr9B7Zj)

## 2. После удаления расширенного атрибута a на файл

- После этого, мы можем выполнять дозапись в файл file1 слова «abcd» и переименовать файл.

![](https://drive.google.com/uc?id=1mCfML857GrUAguyOCNn1cotBlsN1Hsk7)
![](https://drive.google.com/uc?id=1pbm4F0IkZf_5y9j9U584R9XEkhX3_Jxl)

- И мы можем установать команды chmod 000 file1 и chmod 600 file1 на файл.

![](https://drive.google.com/uc?id=1pWR66zPyMWR5HJVlbcGT_8deyirW33uT)

- От имени администратора мы установили расширенный атрибут i на файл /home/guest/dir1/file1.

![](https://drive.google.com/uc?id=16IgGkZzXURgeUd0SqYwtdLnE6sTLmbsS)

## 2. После устаноки расширенный атрибут i на файл

- При выполнении дозаписи в файл file1 слова «test» и переименовании файл, мы не можем это сделать.

![](https://drive.google.com/uc?id=1V5T6o0ktDUCRQhdq5_iAs16tFToptiGk)

![](https://drive.google.com/uc?id=1mFlojFrkcn1KOx6qEPNqdqrpFmcirsWJ)

- И при устаноки команды chmod 000 file1 и chmod 600 file1 на файл file1, мы получил отказ от системы.

![](https://drive.google.com/uc?id=1GTrsVhL4Ov7_BteujjOdi4XD7tB6wu-X)

# IV. Вывод

После лабораторной работы я получил практические навыки работы в консоли с расширенными атрибутами файлов.
