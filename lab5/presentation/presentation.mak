---
## Front matter
lang: ru-RU
title: "Презентация по лабораторной работе №5."
subtitle: "Информационная безопасность"
author: "Ле Тиен Винь"
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 05 Октября 2024

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
  * Cтудент
  * Российский университет дружбы народов
  * [1032215241@pfur.ru](mailto:1032215241@rudn.ru)
  * https://github.com/tvle2000/information
  
:::
::: {.column width="30%"}
![vinh](https://drive.google.com/uc?id=16gkH5LKam4Z6CnnP_-wumWu7WuMxGicx)
:::
::::::::::::::


# I.Цель работы

Исследовать механизм изменения идентификаторов с помощью битов SetUID и Sticky. Получить практические навыки работы в консолях с дополнительными свойствами. Рассмотрить механизм изменения идентификатора процесса пользователя, а также влияние бита Sticky на запись и удаление файлов.

# II. Выполнение работы

## 1. Подготовка лабораторного стенда

- Установить gcc командой "yum install gcc"
- 
- Отключить систему запретов до очередной перезагрузки системы командой "setenforce 0"

![](https://drive.google.com/uc?id=1UYBc3FxbTScB4M-4M_4J02_xAQ8M1GMT)

# II. Выполнение работы
## 2. Создание программы и исследование

- Создать программу simpleid.c от имени пользователя guest, которая будет печатать на экране значения UID и GID после запуска
  
- Скомплилировать программу и выполнить программу

- Сравнить значения UID и GID, результат программы и команды id одинаковые.

- Создать программу simpleid2.c, которая будет печатать на экране значения действительных идентификаторов

- Скомпилировать и запустить simpleid2.c, получить значения real UID и real GID

- От имени суперпользователя выполнить команды:
  
# II. Выполнение работы
## 2. Создание программы и исследование

![](https://drive.google.com/uc?id=1wO-aZfoJSto6JXYvAe7dbCvxuZzwY2NT)

![](https://drive.google.com/uc?id=1XXRkL5oigutlZ_wKltgT-Jfv_9WKRe6p)

![](https://drive.google.com/uc?id=1CAsNwmVMxITetboBa5a13rJaJqL4O6nY)

![](https://drive.google.com/uc?id=19Kyp3QYtDD1DjJXGPwLFaV1MGWysNbUv)

![](https://drive.google.com/uc?id=14Coyjp5ZrqcqOOLdd2ZeYOHMFU1PvptF)

![](https://drive.google.com/uc?id=1H28f11Upcli2XNhqr-7AZMjSL-Ab9_L5)

# II. Выполнение работы
## 2. Создание программы и исследование

> "chown root:guest /home/guest/lab/simpleid2" - команда используется для смены владельца файлов и каталогов. Здесь файл "simpleid2" будет принадлежать пользователю «root» и группе «guest»

> "chmod u+s /home/guest/lab/simpleid2" - Бит SetUID устанавливает владельца исполняемого файла. Когда он установлен, файл будет выполняться с идентификатором пользователя владельца файла, а не того, кто его запустил

- Проверять правильность установки новых атрибутов и смены владельца файла simpleid2, здесь владельца является root и группой guest. И атрибут s установлен для пользователя

# II. Выполнение работы
## 2. Создание программы и исследование

- Запустить simpleid2 и id, сравнить результат вывода мы увидем они одинаковые

- Проделать тоже самое относительно SetGID-бита

- Установить SetGID Бит для файла

- Проверять правильность установки новых атрибутов и смены владельца файла simpleid2, здесь владельца является root и группой guest. И атрибут s установлен для группы

- Запустить simpleid2 и id, сравнить результат вывода мы увидем они одинаковые

- Создать и откомпилировать программу readfile.c, которая читать файл
- 
# II. Выполнение работы
## 2. Создание программы и исследование

![](https://drive.google.com/uc?id=1eE0EeesdiJz7HOn4Yh14YeryNp4u1kBx)

![](https://drive.google.com/uc?id=1_fd7ucK4oWk1OdX79-PZFYp0v9s1fZOa)

![](https://drive.google.com/uc?id=1fElsUNDWTlXMR_GArQ4zLcgnAqMDyR_U)

![](https://drive.google.com/uc?id=1sd58YUbqN5Xzm2EhZrQet2IxY8kTtfee)

![](https://drive.google.com/uc?id=1MnOUilCpC3NcfB4mys2wVT6-qICj89qA)

![](https://drive.google.com/uc?id=1QEGZOF1V_DPhsgKQ0vQyfd3vfXA0r9XP)

# II. Выполнение работы
## 2. Создание программы и исследование

- Сменить владельца у файла readfile.c, чтобы только суперпользователь мог прочитать его, a guest не мог, и проверять

- Сменить у программы readfile владельца и установить SetUID-бит и проверять

- Проверять, может ли программа readfile прочитать файл readfile.c

- Проверять, может ли программа readfile прочитать файл /etc/shadow

# II. Выполнение работы
## 2. Создание программы и исследование


![](https://drive.google.com/uc?id=1bIDyFiYaO9hjcz1t8AzdvtSP2wKoXC6i)

![](https://drive.google.com/uc?id=1D-KkcXOE1I91qQJST31kd2JAEwmo-uQa)

![](https://drive.google.com/uc?id=1JNomNxZW2tRWhBsOzHccNCMLpsvbmUiP)

![](https://drive.google.com/uc?id=1P0Uya0JL6GrH_hdvzzaBZLKhORWUQbzm)

![](https://drive.google.com/uc?id=1W0J3ppwYb_dqKYb4Fnov7_KBiijKMTW7)

![](https://drive.google.com/uc?id=1RsLcjerSk4RoczkTaGq2WqUCBJp3tgiS)

# II. Выполнение работы
## 3. Исследование Sticky-бита

- Проверять установлен ли атрибут Sticky на директории /tmp командой "ls -l / | grep tmp"

- От имени пользователя guest создать файл file01.txt в директории /tmp со словом test

- Разрешить file01.txt прав чтения и записи для категории пользователей «все остальные»

- От пользователя guest2 (не является владельцем) попробовать прочитать файл /tmp/file01.txt

- От пользователя guest2 попробовать дозаписать в файл /tmp/file01.txt слово test2, и нам не удалось выполнить операцию

# II. Выполнение работы
## 3. Исследование Sticky-бита

![](https://drive.google.com/uc?id=1ydKULwGZeJXcQiZDG2S7DntjzTtvkT8x)

![](https://drive.google.com/uc?id=1mtrvYOtlhZjm8AxWJOz2VYgfNrjtRg_S)

![](https://drive.google.com/uc?id=1WnC9qswHF1BK5w5AArg-rTUeN551bguN)

![](https://drive.google.com/uc?id=1PTlsH32AIU4PlgfHllLUkHXSWpJp4849)

![](https://drive.google.com/uc?id=1vK52OzgulA7yffo8d8CkrUvKi22GkTAL)

# II. Выполнение работы
## 3. Исследование Sticky-бита

- От пользователя guest2 попробовать удалить файл /tmp/file01.txt, и нам не удалось выполнить операцию

- Снимать атрибут t (Sticky-бит) с директории /tmp от имени суперпользователя

- От пользователя guest2 проверять, что атрибута t у директории /tmp нет

- Снова от пользователя guest2 попробовать дозаписать в файл /tmp/file01.txt слово test2, и нам не удалось выполнить операцию
- 
- Снова от пользователя guest2 попробовать удалить файл /tmp/file01.txt, и нам удалось выполнить операцию

- Вернуть атрибут t на директорию /tmp от имени суперпользователя

# II. Выполнение работы
## 3. Исследование Sticky-бита

![](https://drive.google.com/uc?id=1oH4rJ_SiJOKiCG6djDJ_QTohVNqTsljY)

![](https://drive.google.com/uc?id=1yWpMbaja8JuXGN7hcw0h7I63PHpGsjk1)

![](https://drive.google.com/uc?id=1N41lK9xcKaaDIE1G2YpgzPE8L_gwakZf)

![](https://drive.google.com/uc?id=1k6PxNhekOu1_yGLLfl-bfEITYM08bBK4)

![](https://drive.google.com/uc?id=1AS8l00cTrPunD65cl44hrjamwvF5jxoj)

# III. Вывод

После лабораторной работы я получил практические навыки работы в консолях с дополнительными свойствами.

