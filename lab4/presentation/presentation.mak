---
## Front matter
lang: ru-RU
title: "Презентация по лабораторной работе №4."
subtitle: "Информационная безопасность"
author: "Ле Тиен Винь"
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 27 Сентября 2024

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Информация
:::::::::::::: {.columns align=center}
::: {.column width="70%"}
  * Ле Тиен Винь
  * студент
  * Российский университет дружбы народов
  * [1032215241@pfur.ru](mailto:1032215241@rudn.ru)
  * https://github.com/tvle2000/information
  
:::
::: {.column width="30%"}
![vinh](https://drive.google.com/uc?id=16gkH5LKam4Z6CnnP_-wumWu7WuMxGicx)
:::
::::::::::::::


# I.Цель работы

Получить практические навыки работы в консоли с расширенными атрибутами файлов.

# III. Выполнение работы

- При определении расширенных атрибут файл от имени guest, мы получил отказ от системы.

- При устаноки команды chmod 600 file1 на файл file1 права, разрешающие чтение и запись для владельца файла от имени guest, мы получил отказ от системы.
  
- И при устаноки на файл /home/guest/dir1/file1 расширенный атрибут a от имени пользователя guest, мы получил отказ от системы.

- От имени администратора мы установили расширенный атрибут a на файл /home/guest/dir1/file1.

![](https://drive.google.com/uc?id=17gAfpVGLezTWbSSwXD8RCqTxmIVXKg4t)

![](https://drive.google.com/uc?id=16ovBhK-AkcuF4Cj6roXQH3T_6h03xfOZ)

![](https://drive.google.com/uc?id=1K28h_MiaJNCopPpnoQpDXb0fKkgrHSLY)

![](https://drive.google.com/uc?id=1RCDOUCGqweE631M3yjJsdGzLCs8vGX3j)

# III. Выполнение работы
## 1. После устаноки расширенный атрибут a на файл

- При проверки правильность установления атрибута от пользователя guest, мы получил отказ от системы, поэтому мы проверим от имени администратора.

- Выполнить дозапись в файл file1 слова «test» и проверять командой cat.

# III. Выполнение работы
## 1. После устаноки расширенный атрибут a на файл

![](https://drive.google.com/uc?id=1khpgkwUDoY7QfOnASzwBYA70hvr2we6I)

![](https://drive.google.com/uc?id=1dEaxPBHiRA3Oe4r_rnCQcPjtoRltgKIz)

![](https://drive.google.com/uc?id=1v2wkiRz-cbNXWcK1Pb-0KGCqRvNRk9nG)

![](https://drive.google.com/uc?id=14qKDYkm9ZGvB7m2Pm1OV6n_zU53kCTMg)

# III. Выполнение работы
## 1. После устаноки расширенный атрибут a на файл

- При выполнении дозаписи в файл file1 слова «abcd» и переименовании файл, мы не можем это сделать.

- И при устаноки команды chmod 000 file1 и chmod 600 file1 на файл file1, мы получил отказ от системы.

- Снимать расширенный атрибут a с файла /home/guest/dirl/file1.

# III. Выполнение работы
## 1. После устаноки расширенный атрибут a на файл

![](https://drive.google.com/uc?id=1wWmELFnf_eGDGzSXnBiib-6eq_Tuvh80)

![](https://drive.google.com/uc?id=1akxrk8_uYefZf24BXDkYI0ud9RlWMLiv)

![](https://drive.google.com/uc?id=1dKWfHVU8Ztq3_RoEvn7pk5b_lYyY57YN)

![](https://drive.google.com/uc?id=1cZc-J4uxdrlqbtc0uLvCpFWR02ihaM9s)

![](https://drive.google.com/uc?id=1bDH1iGQKFkg2F7yOKO5s_PLStNr9B7Zj)

# III. Выполнение работы
## 2. После удаления расширенного атрибута a на файл

- После этого, мы можем выполнять дозапись в файл file1 слова «abcd» и переименовать файл.

- И мы можем установать команды chmod 000 file1 и chmod 600 file1 на файл.

- От имени администратора мы установили расширенный атрибут i на файл /home/guest/dir1/file1.

# III. Выполнение работы
## 2. После удаления расширенного атрибута a на файл

![](https://drive.google.com/uc?id=1mCfML857GrUAguyOCNn1cotBlsN1Hsk7)

![](https://drive.google.com/uc?id=1pbm4F0IkZf_5y9j9U584R9XEkhX3_Jxl)

![](https://drive.google.com/uc?id=1pWR66zPyMWR5HJVlbcGT_8deyirW33uT)

![](https://drive.google.com/uc?id=16IgGkZzXURgeUd0SqYwtdLnE6sTLmbsS)

# III. Выполнение работы
## 2. После устаноки расширенный атрибут i на файл

- При выполнении дозаписи в файл file1 слова «test» и переименовании файл, мы не можем это сделать.

- И при устаноки команды chmod 000 file1 и chmod 600 file1 на файл file1, мы получил отказ от системы.

# III. Выполнение работы
## 2. После удаления расширенного атрибута a на файл

![](https://drive.google.com/uc?id=1V5T6o0ktDUCRQhdq5_iAs16tFToptiGk)

![](https://drive.google.com/uc?id=1mFlojFrkcn1KOx6qEPNqdqrpFmcirsWJ)

![](https://drive.google.com/uc?id=1GTrsVhL4Ov7_BteujjOdi4XD7tB6wu-X)

# IV. Вывод

После лабораторной работы я получил практические навыки работы в консоли с расширенными атрибутами файлов.
