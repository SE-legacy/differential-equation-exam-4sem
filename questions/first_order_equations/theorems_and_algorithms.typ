=== Алгоритм решения уравнения с разделяющимися переменными и его обоснование

Дано уравнение вида:

$
  y' = f(x) g(y)
$ <eq:partial_variables>

1. Переходим к дифференциалу:

$
  (d y) / (d x) = f(x) g(y)
$

2. Делим переменные:

$
  1/g(y) d y = f(x) d x, space g(y) != 0
$

3. Вычисляем два интеграла:

$ integral 1/g(y) d y = G(y), $ где $G(y)$ --- любая фиксированная первообразная.

$ integral f(x) d x = F(x), $ где $F(x)$ --- любая фиксированная первообразная.

4. Получим уравнение:

$
  G(y) = F(x) + C,
$

$C$ --- произвольная константа.

5. Находим из уравнения $y = phi(x, C)$.

Тогда общее решение имеет вид: $y = phi(x, C)$, где $C$ --- произвольная константа.

// Надо ли сюда вставлять замечание про существование решения, если интеграл не берётся? Хз

==== Обоснование алгоритма:

Покажем, что $y = phi(x, C)$ при любом $C$ будет решением уравнения @eq:partial_variables.

Фиксируем $C = C_0$.

По построению:
$
  G(phi(x, C_0)) equiv F(x) + C_0\
  d/(d x) G(phi(x, C_0)) equiv d/(d x) F(x)\
  G'(phi(x, C_0)) dot phi'(x, C_0) equiv F'(x)\
  1/g(phi(x, C_0)) dot phi'(x, C_0) equiv f(x)\
  phi'(x, C_0) equiv f(x) g(phi(x, C_0))
$

Значит $phi(x, C_0)$ --- решение @eq:partial_variables.


=== Формула общего решения линейного уравнения I-го порядка (теорема 1)

Запишем линейное ДУ 1-го порядка в виде
$ y' + p(x) y = q(x) $ <lin_eq>
где $p(x) = (b(x)) / (a(x))$, $q(x) = f(x) / a(x)$

Общее решение данного уравнения находится по формуле:
$ y(x) = e^(- integral p(x) d x) ( integral e^(integral p(x) d x) q(x) d x + c) $ <lin_solution>
где $integral p(x) d x$, $integral e^(integral p(x) d x) q(x) d x$ --- произвольные фиксированные первообразные, $c$ --- const

==== Доказательство:

Докажем, что @lin_solution при любом $x$ дает решение уравнения @lin_eq. Подставим @lin_solution в @lin_eq:

$
  e^( - integral p(x) d x) (- p(x) d x) (integral e^(integral p(x) d x) q(x) d x + c) + \ + underbrace(e^(- integral p(x) d x) e^(integral p(x) d x), 1) q(x) +p(x) e^(- integral p(x) d x) (integral e^(integral p(x) d x) q(x) d x + c) = q(x)
$

Таким образом @lin_solution дает решение при любом $c$

=== Метод вариации (Лагранжа)

Рассмотрим линейное ДУ 1-го порядка:

$ y'(x) + p(x) y = q(x) $<lin_eq_var>

+ Решим соответствующее ему однородное уравнение $y' + p(x) y = 0$ --- с разделяющимися переменными. $y_0 = c e^(-p(x))$ --- общее решение.
+ Ищем решение уравнения @lin_eq_var в виде

  $ y = C(x) e^(- p(x)), $<lin_eq_var_solution_c>

  где $C(x)$ --- пока неизвестная функция.

  $ y' = C'(x) e^(-p(x)) + C(x) e^(-p(x)) dot (-p'(x)) = C'(x) e^(-p(x)) - C(x) e^(-p(x)) p(x) $

  Подставляем в @lin_eq_var:

  $
    C'(x) e^(-p(x)) - C(x)p(x) e^(-p(x)) + C(x)p(x) e^(-p(x)) = q(x) \
    C'(x) e^(-p(x)) = q(x) \
    C(x) = integral e^(p(x)) q(x) + c
  $

+ Подставляем в @lin_eq_var_solution_c
  $ y(x) = e^(-p(x))(integral e^p(x) q(x) d x + c) $

=== Алгоритм решения ДУ в полных дифференциалах и его обоснование

_Рассмотрим симметричную форму ДУ:_

$ M(x, y) d x + N(x, y) d y = 0 $ <full_differentials_1>

_Уравнение является ДУ в полных дифференциалах, если_
$ space.quad (partial M(x, y)) / (partial y) equiv (partial N(x, y)) / (partial x) $

_Считаем, что $y = y(x), space N(x, y) != 0$_

*Алгоритм:*
+ Найдём вспомогательную функцию $Phi(x, y)$ как решение следующей системы:
  $
    cases(
      (partial Phi(x, y)) / (partial x) = M(x, y),
      (partial Phi(x, y)) / (partial y) = N(x, y)
    )
  $
+ Рассмотрим 1-е уравнение системы. Фиксируем $y$, получаем:
  $ (partial Phi(x, y)) / (partial x) = M(x, y) $
  $ Phi(x, y) = integral M(x, y) d x = limits(integral)_(x_0)^x M(t, y) d t + C(y), $

  где $C(y)$ --- пока неизвестная функция.

+ Подставляем $Phi(x, y)$ во второе уравнение системы:
  $ partial / (partial y) (limits(integral)_(x_0)^x M(t, y) d t + d y) = N(x, y) $
  $ limits(integral)_(x_0)^x (partial M(t, y)) / (partial y) d t + C'(y) = N(x, y) $
  $ limits(integral)_(x_0)^x (partial N(t, y)) / (partial t) d t + C'(y) = N(x, y) $
  $
    cancel(N(x, y)) - N(x_0, y) + C'(y) = cancel(N(x, y)) \
    C'(y) = N(x_0, y) ==> C(y) = integral N(x_0, y) d y ==> \
    ==> Phi(x, y) = limits(integral)_(x_0)^x M(t, y) d t + integral N(x_0, y) d y
  $
+ Рассмотрим уравнение относительно $y$:
  $ Phi(x, y) = C, space C #[--- произвольная постоянная] $ <overall_solution_full_partial>
+ Решаем @overall_solution_full_partial относительно $y$ и находим общее решение $ y = phi(x, c) $

#underline[Замечание:] Найти $y$ в явном виде возможно не всегда. В таком случае записывается общее решение в неявном виде, коим является @overall_solution_full_partial

==== Обоснование:

Пусть $N(x, y) != 0$ и $y = y(x)$.

В этом случае @full_differentials_1 эквивалентно уравнению

$
  (d y)/(d x) = - (M(x, y))/(N(x, y)).
$ <full_differentials_2>

По построению (см. пункт 5)

$
  Phi(x, phi(x, c)) equiv C.
$
<full_differentials_3>

Другими словами, $phi(x, C)$ --- неявная функция, определяющая уравнение из пункта 4.
Она определяется однозначно, так как $(partial Phi)/(partial y) = N(x, y) != 0$ (см. теорему о неявной функции). Продифференцируем обе части уравнения @full_differentials_3 и получим

$
  (partial Phi(x, phi(x, C)))/(partial x) + (partial Phi(x, phi(x, C)))/(partial y) dot (d phi(x, C))/(d x) equiv 0\
  M(x, phi(x, C)) + underbrace(N(x, phi(x, C)), != 0) phi'(x, C) equiv 0 \
  phi'(x, C) equiv - (M(x, phi(x, C)))/(N(x, phi(x, C))).
$

Тогда $phi(x, C)$ --- решение @full_differentials_2, т.е $phi(x, C)$ --- решение @full_differentials_1 при любом $C$.

=== Основная теорема существования и единственности (1--3 этапы)

Пусть $f(x, y)$, $(partial f(x, y))/(partial y)$ --- непрерывны в $D subset RR^2$, $(x_0, y_0) in D$.

Тогда задачи Коши $y' = f(x, y)$ с начальным условием $y(x_0) = y_0$ имеет единственное решение, определённое в некоторой окрестности $x_0$.

==== Доказательство:

*Этап 1: Сведение задачи Коши к интегральному уравнению*
Пусть $y = phi(x)$ --- решение задачи Коши: $phi'(x) equiv f(x, phi(x))$. Переобозначим: $phi'(t) equiv f(t, phi(t))$.

Продифференцируем от $x_0$ до $x$ по $t$, $x$ --- фиксированная точка из $[a, b]$:

$
  phi(x) - underbrace(phi(x_0), y_0) = limits(integral)_(x_0)^x f(t, phi(t)) d t
$
$
  phi(x) equiv y_0 + limits(integral)_(x_0)^x f(t, phi(t)) d t
$ <eq_2_13_1>

Тождество @eq_2_13_1 означает, что $phi(x)$ по определению является решением следующего интегрального уравнения:

$ y(x) = y_0 + limits(integral)_(x_0)^x f(t, y(t)) d t, space a <= x <= b $ <eq_2_13_2>

Вывод: любое решение задачи Коши является решением @eq_2_13_2. Верно и обратное. Таким образом, задача Коши эквивалентна уравнению @eq_2_13_2.

*Этап 2: Доказательство существования решения @eq_2_13_2*

Построим последовательность функций:

$phi_1(x) equiv y_0, \
phi_2(x) = y_0 + limits(integral)_(x_0)^x f(t, phi_1(t)) d t \
phi_3(x) = y_0 + limits(integral)_(x_0)^x f(t, phi_2(t)) d t, \
phi_(k + 1) (x) = y_0 + limits(integral)_(x_0)^x f(t, phi_k (t)) d t$

Получаем последовательность непрерывных функций:
$ phi_0(x), phi_1(x), ..., phi_(k + 1)(x) $ <eq_2_13_3>

Доказывается, что

$forall x$ $exists limits(lim)_(k -> infinity) phi_k(x) = phi(x)$

Рассмотрим @eq_2_13_3

$ phi_(k + 1) (x) = y_0 + limits(integral)_(x_0)^x f(t, phi_k (t)) d t $

При $k -> infinity$ получаем уравнение:

$ phi(x) = y_0 + limits(integral)_(x_0)^x f(t, phi(t)) d t $

Следовательно в пределе получаем:

$phi(x) equiv y_0 + limits(integral)_(x_0)^x f(t, phi(t)) d t ==>$ решение $phi(x)$ --- решение @eq_2_13_2.

*Этап 3: Доказательство единственности решения*

Имеем, что $phi(x)$ --- решение @eq_2_13_2. От противного, пусть $phi_1(x)$ --- тоже решение, т.е.

$ phi(x) - phi_1(x) = limits(integral)_(x_0)^x [f(t, phi(t)) - f(t, phi_1(t))] d t $ <eq_2_13_4>

_Теорема о среднем_ Если g(x) --- дифференцируемая функция, то
$ g(x_1) - g(x_2) = g'(xi)(x_1 - x_2) $
где $xi$ --- какая-то точка между $x_1$ и $x_2$

Применяем эту теорему к @eq_2_13_4

$ phi(x) - phi_1(x) = limits(integral)_(x_0)^x (partial f(t, xi(t))) / (partial y) (phi(t) - phi_1(t)) d t $
где $xi(t)$ --- между $phi(t)$ и $phi_1(t)$


$ abs(phi(x) - phi_1(x)) = abs(limits(integral)_(x_0)^x (partial f(t, xi(t))) / (partial y) (phi(t) - phi_1(t)) d t) $

Предположим, для определенности, что $x_0 <= x <= b$, тогда вспомним, что $abs(limits(integral)_(x_0)^b F(x)) <= limits(integral)_(x_0)^b abs(F(x))$. Получим:

$
  abs(phi(x) - phi_1(x)) = limits(integral)_(x_0)^x underbrace(abs((partial f(t, xi(t))) / (partial y)), <= M = "const") abs((phi(t) - phi_1(t))) d t
$

$ u(x) <= M limits(integral)_(x_0)^x underbrace(u(t), <= m) d t $

$ x_0 <= x <= b $

Обозначим за $m = limits(max)_(x_0 <= x <= b) (u(x))$. Тогда получим:

$ u(x) <= M m limits(integral)_(x_0)^x d t = M m (x - x_0) $

$ u(x) <= M limits(integral)_(x_0)^x M m (t - x_0) d t = M^2 m (x - x_0)^2 / 2 $

$ u(x) <= M^3 m limits(integral)_(x_0)^x (t - x_0)^2 / 2 d t $

$ forall x u(x) <= m (M^4 (x - x_0)^n) / (2 dot 3 dot 4 dot ... dot n) = m (M (x - x_0))^n / (n!) $

Факториал растёт быстрее степени, поэтому $limits(lim)_(n -> infinity) m (M (x - x_0))^n / (n!) = 0$

$ 0 <= u(x) <= 0 ==> u(x) equiv 0 ==> phi(x) - phi_1(x) equiv 0 ==> phi(x) $ --- единственное решение.
