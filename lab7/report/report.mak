---
## Front matter
title: Презентация по лабораторной работе №7
subtitle: Элементы криптографии. Однократное гаммирование
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

Освоить на практике применение режима однократного гаммирования.

# II. Задание

Нужно подобрать ключ, чтобы получить сообщение «С Новым Годом, друзья!». Требуется разработать приложение, позволяющее шифровать и дешифровать данные в режиме однократного гаммирования. Приложение должно:

1. Определить вид шифротекста при известном ключе и известном открытом тексте.

2. Определить ключ, с помощью которого шифротекст может быть преобразован в некоторый фрагмент текста, представляющий собой один из возможных вариантов прочтения открытого текста.

# III. Выполнение задания

## Код приложения

```C++
#include <iostream>
#include <string>
using namespace std;

string xorOperator(const string &input, const string &key) {
    string output = input;
    for (size_t i = 0; i < input.size(); ++i) {
        output[i] = input[i] ^ key[i % key.size()];
    }
    return output;
}

string determineKey(const string &ciphertext, const string &known_plaintext) {
    string key = "";
    for (size_t i = 0; i < ciphertext.size() && i < known_plaintext.size(); ++i) {
        key += ciphertext[i] ^ known_plaintext[i];
    }
    return key;
}

int main() {
    string plaintext;
    cout << "Import text: "; cin >> plaintext;
    string key;
    cout << "Import key: "; cin >> key;
       
    string ciphertext = xorOperator(plaintext, key);

    cout << "Ciphertext (Hex): ";
    for (char c : ciphertext) {
        cout << hex << static_cast<int>(c) << " ";
    }
    cout << endl;

    string decryptedtext = xorOperator(ciphertext, key);
    cout << "Decrypted Text: " << decryptedtext << endl;

    string example_ciphertext = ciphertext;
    string example_plaintext_fragment = plaintext;

    string extracted_key = determineKey(example_ciphertext, example_plaintext_fragment);
    cout << "Extracted Key: " << extracted_key << endl;

    return 0;
}
```

## Анализ кода

- Мы используем метод шифрования: Выполнение операции сложения по модулю 2 (XOR). Поскольку такой метод шифрования является симметричным, так как двойное прибавление одной и той же величины по модулю 2 восстанавливает исходное значение, а шифрование и расшифрование выполняется одной и той же программой.

```C++
string xorOperator(const string &input, const string &key) {
    string output = input;
    for (size_t i = 0; i < input.size(); ++i) {
        output[i] = input[i] ^ key[i % key.size()];
    }
    return output;
}
```

- Функция преобразует каждый элемент введенного текста в новый элемент, зашифрованный на основе ключа, с помощью операцией сложения по модулю 2 (XOR): Ci = Pi + Ki (1).

- Где Ci — i-й символ получившегося зашифрованного послания, Pi — i-й символ открытого текста, Ki — i-й символ ключа, i = 1, ..., m.

```C++
string determineKey(const string &ciphertext, const string &known_plaintext) {
    string key = "";
    for (size_t i = 0; i < ciphertext.size() && i < known_plaintext.size(); ++i) {
        key += ciphertext[i] ^ known_plaintext[i];
    }
    return key;
}
```

- Функция определяет ключ, когда известен открытый текст и зашифрованный текст, на основе XOR: Ki = Ci + Pi.

- Если известны шифротекст и открытый текст, то задача нахождения ключа решается также в соответствии с (1), а именно, обе части равенства необходимо сложить по модулю 2 с Pi: Ci + Pi = Pi + Ki + Pi = Ki.

```C++
int main() {
    string plaintext;
    cout << "Import text: "; cin >> plaintext;
    string key;
    cout << "Import key: "; cin >> key;
       
    string ciphertext = xorOperator(plaintext, key);

    cout << "Ciphertext (Hex): ";
    for (char c : ciphertext) {
        cout << hex << static_cast<int>(c) << " ";
    }
    cout << endl;

    string decryptedtext = xorOperator(ciphertext, key);
    cout << "Decrypted Text: " << decryptedtext << endl;

    string example_ciphertext = ciphertext;
    string example_plaintext_fragment = plaintext;

    string extracted_key = determineKey(example_ciphertext, example_plaintext_fragment);
    cout << "Extracted Key: " << extracted_key << endl;

    return 0;
}
```

- В main мы будем собирать данные с клавиатуры.

- Используовать функцию "xorOperator" для генерации зашифрованного текста и вывода зашифрованного текста на экран.

- Используовать функцию "xorOperator", чтобы расшифровать зашифрованный текст и вывести исходный текст на экран.

- Используовать ранее созданный зашифрованный текст и исходный текст, чтобы найти ключ и вывести исходный текст на экран.

## Результат программы

![](img/1.png)

# IV. Вывод

После лаборатоной работы я получил практические навыки по применение режима однократного гаммирования.
