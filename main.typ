#import "conf.typ": generate_title, make_toc

#set text(lang: "ru")

#show heading: it => {
  if (it.level < 4) {
    counter(math.equation).update(0)
  }
  it
}

#show math.equation: it => {
  if it.has("label") {
    math.equation(numbering: "(1)", block: true, it.body)
  } else {
    it
  }
}

#show ref: it => {
  let eq = counter(math.equation)
  let el = it.element
  if el != none and el.func() == math.equation {
    link(el.location(), numbering("(1)", ..eq.at(el.location()).map(it => it + 1)))
  } else {
    it
  }
}

#generate_title()

#make_toc()

#show heading.where(level: 1): set heading(numbering: (.., last) => { str(last) + "." })
#show heading.where(level: 3): set heading(numbering: (.., last) => { str(last) + "." })

#heading(numbering: none)[Сокращения]

- ДУ --- дифференциальные уравнения
- ФСР --- фундаментальная система решений

= Уравнения I-го порядка

== Уравнения I-го порядка: определения и формулировки

#include "questions/first_order_equations/definitions.typ"

== Уравнения I-го порядка: теоремы

#include "questions/first_order_equations/theorems_and_algorithms.typ"

= Линейные ДУ $n$-го порядка

== Линейные ДУ $n$-го порядка: определения и формулировки

#include "questions/linear_nth_order_equations/definitions.typ"

== Линейные ДУ $n$-го порядка: теоремы

#include "questions/linear_nth_order_equations/theorems_and_algorithms.typ"

= Линейные уравнения II-го порядка

#include "questions/second_order_equations/theorems_and_algorithms.typ"

= Линейные системы ДУ

== Линейные системы ДУ: определения и формулировки

#include "questions/linear-systems-of-equations/definitions.typ"

== Линейные системы ДУ: теоремы

#include "questions/linear-systems-of-equations/theorems_and_algorithms.typ"

#pagebreak()

== Приложение 1

=== Пояснение к 4.1

*Векторная запись линейных систем*

Обозначим:

$Y (x) = mat(y_1 (x); y_2 (x); ...; y_n (x))$, $F (x) = mat(f_1 (x); f_2 (x); ...; f_n (x))$,

$A(x) = mat(a_11 (x), a_12 (x), ..., a_(1 n) (x); a_21 (x), a_22 (x), ..., a_(2 n) (x); ..., ..., ..., ...; a_(n 1) (x), a_(n 2) (x), ..., a_(n n) (x)) #[ –-- матрица системы]$

$A(x) Y(x) = mat(a_11 (x) y_1 (x)+a_12 (x) y_2 (x)+...+a_(1 n) (x) y_n (x); a_21 (x) y_1 (x)+a_22 (x) y_2 (x)+...+a_(2 n) (x) y_n (x); ...; a_(n 1) (x) y_1 (x)+a_(n 2) (x) y_2 (x)+...+a_(n n) (x) y_n (x))$

$A(x) Y(x) + F(x) = mat(a_11 (x) y_1 (x)+...+a_(1 n) (x) y_n (x) + f_1 (x); ...; a_(n 1) (x) y_1 (x)+...+a_(n n) (x) y_n (x) + f_n (x))$

$Y^' (x) = mat(y_1^' (x); y_2^' (x); ...; y_n^' (x))$

$#ref(<eq:lin_system_normal_linear_system>) <==> Y^' = A(x)Y + F(x)$

Однородная система: \ $Y^' = A(x)Y$

