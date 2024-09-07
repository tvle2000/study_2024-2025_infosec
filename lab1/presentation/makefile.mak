---
## Front matter
lang: ru-RU
title: "Презентация по лабораторной работе №1."
subtitle: "Информационная безопасность"
author: "Ле Тиен Винь"
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 05 Сентября 2024

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

Получить навыки установок операционной системы на виртуальную машину и настроить минимально необходимых для дальнейшей работы сервисов.

# II. Задание

## 1. Установить операционную систему Linux (дистрибутив Rocky) на виртуальную машину VirtualBox

## 2. Настроить систему для работы сервисов

## 3. Познакомиться с операционной системой командой "dmesg"


# III. Выполнение задания

## 1. Установить операционную систему Linux (дистрибутив Rocky) на виртуальную машину VirtualBox

- Создать новую виртуальную машину, укажать называние и тип операционной системы — Linux, RedHat.

![Окно «Называние машины и тип ОС»](https://drive.google.com/uc?id=1MqmazwYUKHIFNBDCGLg0d0I4QPkBPaKE)

# III. Выполнение задания

## 1. Установить операционную систему Linux (дистрибутив Rocky) на виртуальную машину VirtualBox

- Укажать размер основной памяти виртуальной машины - 4096 МБ, и количество процессора - 2

![Окно конфигурация оборудования](https://drive.google.com/uc?id=1US4h11eIQ3cxZeUd38BLAf_jK1bdYCPL)

# III. Выполнение задания

## 1. Установить операционную систему Linux (дистрибутив Rocky) на виртуальную машину VirtualBox

- Задавать размер диска — 60 ГБ

![Окно конфигурация виртуального жесткого диска](https://drive.google.com/uc?id=1vee94XxeN5NHtXf_dueZddLxM8hYhI_j)

# III. Выполнение задания

## 1. Установить операционную систему Linux (дистрибутив Rocky) на виртуальную машину VirtualBox

- Добавить новый привод оптических дисков и выберите образ операционной системы

![Окно «Носители» виртуальной машины](https://drive.google.com/uc?id=1mwu0-HvMZo3HXp-WFkhDxqlo12KQLpKB)

# III. Выполнение задания
## 2. Настроить систему для работы сервисов

- Мы настроим систему для работы сервисов по следующему рисунку:

![Окно настройки установки: выбор программ](https://drive.google.com/uc?id=19koVVDR9E6kAwAmgo5lx2xoM3wpU4EFo)

# III. Выполнение задания
## 2. Настроить систему для работы сервисов
![Отключить KDUMP](https://drive.google.com/uc?id=14PEqZRdfZTLxCD7_l8-n9ePIhKePv5re)

# III. Выполнение задания

## 2. Настроить систему для работы сервисов
![Включите сетевое соединение и в качестве имени узла укажать ltvinh.localdomain](https://drive.google.com/uc?id=1LDkQVpwU_T_QI0Bbh8qFRFOSqe9Nz_DI)

# III. Выполнение задания
## 2. Настроить систему для работы сервисов

![Установить пароль для root](https://drive.google.com/uc?id=1WQOZIDbF3J0gEKvuOLjPTePj0QYn6apf)

# III. Выполнение задания
## 2. Настроить систему для работы сервисов

[![Установить пароль для пользователя с правами администратора](https://drive.google.com/uc?id=164ui4Rh7OfjA4VKZW61FTLpz0zIFX8Gj)](https://drive.google.com/uc?id=1te4fna3ntqP-WXvjI4R2sI9HsS4GOFSi))

- После этого, мы перезапустим виртуальную машину

![Интерфейс Rocky Linux](https://drive.google.com/uc?id=1cEu-k9euuiyLvEz_8OtiyMso6kxk5goe)

- Затем подключить образ диска дополнений гостевой ОС и корректно перезагрузить виртуальную машину

# III. Выполнение задания

## 3. Познакомиться с операционной системой командой "dmesg"

- **dmesg** - команда, используемая в UNIX‐подобных операционных системах для вывода буфера сообщений ядра в стандартный поток вывода (по умолчанию на экран)
- Можно использовать поиск с помощью **grep** для получения следующей информаций:
![Версия ядра Linux](https://drive.google.com/uc?id=1NpFFcMpPj7indoqez4XhirYsY8Z_OT7d)

![Частота процессора](https://drive.google.com/uc?id=1AFc30rC53hduZlt-h8mFkp_DSCgdv9aS)
![Модель процессора](https://drive.google.com/uc?id=17e4GBco-_U8h6mNC6utpRkh0xWS2RRcW)
![Объем доступной оперативной памяти](https://drive.google.com/uc?id=1b9xpWNR1luYNJRSPDPYb-EHv5WNIZvGT)

![Тип обнаруженного гипервизора](https://drive.google.com/uc?id=1pA6BTIGNbD_QVpT56Iyn463RYe7Brtq0)

![Тип файловой системы корневого раздела](https://drive.google.com/uc?id=1jqlbgVlPXbhyDELVz9Hrfah1De_MWeGc)

![Последовательность монтирования файловых систем](https://drive.google.com/uc?id=1KyrQE5dxWP4vMjfu3N-vaAy7FwaJd39F)


# IV. Вывод
После лаборатоной работы я получил навыки установок и настройки операционной системы на виртуальную машину для дальнейшей работы сервисов.