=== Случай полного интегрирования

Рассмотрим уравнение

$
  y'' + a_1 (x) y' + a_2 (x) y = 0
$ <eq:2-order_lin_eq>

==== В уравнении нет $y$

Рассмотрим уравнение

$
  y'' + a_1 (x) y' = 0, space a <= x <= b
$ <eq:2-order_lin_eq_1_no_y>

Переходим к новой неизвестной функции $z(x)$ по формуле

$
  z(x) = y'(x), space z'(x) = y''(x)
$

Подставляем в @eq:2-order_lin_eq_1_no_y, получаем уравнение для $z$:

$
  z'(x) + a_1 (x) z(x) = 0
$ <eq:2-order_lin_eq_1_z>

@eq:2-order_lin_eq_1_z --- уравнение 1-го порядка с разделяющимися переменными.

Решаем это уравнение:

$
  z(x) = c_1 phi(x)
$ <eq:2-order_lin_eq_1_z_solution>

@eq:2-order_lin_eq_1_z_solution --- общее решение уравнения @eq:2-order_lin_eq_1_z, $phi(x)$ --- известная функция.

Отсюда $y'(x) = c_1 phi(x)$; $y(x) = c_1 integral phi(x) d x + c_2$ --- общее решение уравнения @eq:2-order_lin_eq_1_no_y.

==== Интегрирование с помощью частного решения

Рассмотрим уравнение

$
  y'' + a_1 (x) y' + a_2 (x) y = 0
$ <eq:2-order_lin_eq_2>

Пусть $y_"ч" (x)$ --- частное решение уравнения @eq:2-order_lin_eq_2.

Переходим к новой неизвестной функции $z(x)$ по формуле

$
  y(x) = y_"ч" (x) z(x)
$ <eq:2-order_lin_eq_2_z>

$
  y'(x) = y'_"ч" (x) z(x) + y_"ч" (x) z'(x)
$

$
  y''(x) = y''_"ч" (x) z(x) + y'_"ч" (x) z'(x) + y'_"ч" (x) z(x) + y_"ч" (x) z''(x) = y''_"ч" (x) z(x) + 2 y'_"ч" (x) z'(x) + y_"ч" z''(x)
$

Подставляем эти формулы в @eq:2-order_lin_eq_2:

$
  y''_"ч" (x) z(x) + 2 y'_"ч" (x) z'(x) + y_"ч" z''(x) + a_1 (x) (y'_"ч" (x) z(x) + y_"ч" (x) z'(x)) + a_2 (x) y_"ч" (x) z(x) = 0
$

$
  y_"ч" z'' + (2 y'_"ч" + a_1 y_"ч") z' + (y''_"ч" + a_1 y'_"ч" + a_2 y_"ч") z = 0
$

Поделим обе части на $y_"ч"$:

$
  z''(x) + (2 y'_"ч" + a_1 (x) y_"ч" (x))/(y_"ч" (x)) z'(x) = 0
$ <eq:2-order_lin_eq_2_no_z>

В уравнении @eq:2-order_lin_eq_2_no_z нет $z$.

Решаем это уравнение по предыдущему алгоритму:

$z(x) = c_1 Phi(x) + c_2$ --- общее решение уравнения @eq:2-order_lin_eq_2_no_z.

Отсюда, в силу @eq:2-order_lin_eq_2_z, $y(x) = c_1 y_"ч" (x) Phi(x) + c_2 y_"ч" (x)$ --- общее решение уравнения @eq:2-order_lin_eq_2.

=== Упрощение с помощью замены функции

Рассмотрим уравнение

$
  y'' + a_1 (x) y' + a_2 (x) y = 0
$ <eq:2-order_lin_eq_3>

Переходим к новой неизвестной функции $z(x)$ по формуле

$
  y(x) = u(x) z(x)
$

где $u(x)$ --- пока неизвестная функция.

$
  y' = u' z + u z'
$

$
  y'' = u z'' + 2 u' z' + u'' z
$

Подставляем эти формулы в @eq:2-order_lin_eq_3:

$
  u z'' + 2 u' z' + u'' z + a_1 (u' z + u z') + a_2 u z = 0
$

$
  u z'' + (2 u' + a_1 u) z' + (u'' + a_1 u' + a_2 u) z = 0
$

Выберем $u(x)$ как решение уравнения

$
  2 u' + a_1 (x) u = 0
$ <eq:2-order_lin_eq_3_u>

@eq:2-order_lin_eq_3_u --- уравнение с разделяющимися переменными.

Решаем это уравнение:

$
  u(x) = c phi(x)
$

Берём $c = 1$, т.е. $u(x) = phi(x)$, где $phi(x)$ --- известная функция.

Для $z(x)$ получаем уравнение

$
  z'' + A(x) z = 0, space A(x) = (u''(x) + a_1 (x) u'(x) + a_2 (x) u(x))/(u(x))
$ <eq:2-order_lin_eq_3_z_solution>

$A(x)$ --- известная функция.

Уравнение @eq:2-order_lin_eq_3_z_solution проще уравнения @eq:2-order_lin_eq_3 в том смысле, что в нём нет $z'$.

==== Пример

Рассмотрим уравнение

$
  y'' + 1/x y' + (1 - 1/(4 x^2)) y = 0, space x > 0
$ <eq:2-order_lin_eq_example_1>

Делаем замену $y(x) = u(x) z(x)$, где $u(x)$ --- ненулевое решение уравнения:

$
  2 u' + 1/x u = 0
$ <eq:2-order_lin_eq_example_1_u>

@eq:2-order_lin_eq_example_1_u --- уравнение с разделяющимися переменными.

Решаем это уравнение:

$
  (d u)/(d x) = -u/2 (d x)/x
$

$
  integral (d u)/u = -1/2 integral (d x)/x
$

$
  ln abs(u) = -1/2 ln x = ln 1/sqrt(x)
$

$u(x) = 1/sqrt(x)$ --- частное решение уравнения @eq:2-order_lin_eq_example_1_u.

Таким образом,

$
  y(x) = 1/sqrt(x) z(x)
$ <eq:2-order_lin_eq_example_1_y>

Вычисляем $y'(x)$ и $y''(x)$:

$
  y'(x) = -1/(2 sqrt(x^3)) z(x) + 1/sqrt(x) z'(x)
$

$
  y''(x) = 3/(4 sqrt(x^5)) z(x) - 1/(sqrt(x^3)) z'(x) + 1/(sqrt(x)) z''(x)
$

Подставляем эти формулы в уравнение @eq:2-order_lin_eq_example_1:

$
  3/(4 sqrt(x^5)) z(x) - 1/sqrt(x^3) z'(x) + 1/sqrt(x) z''(x) -1/(2 sqrt(x^5)) z(x) + 1/sqrt(x^3) z'(x) + 1/sqrt(x) z(x) - 1/(4 sqrt(x^5)) z(x) = 0
$

$
  1/sqrt(x) z''(x) + 1/sqrt(x) z(x) = 0
$

Получаем уравнение

$
  z'' + z = 0 ==> z = c_1 cos x + c_2 sin x
$ <eq:2-order_lin_eq_example_1_z>

Из уравнения @eq:2-order_lin_eq_example_1_y получаем

$y(x) = c_1 (cos x)/sqrt(x) + c_2 (sin x)/sqrt(x)$ --- общее решение уравнения @eq:2-order_lin_eq_example_1.

=== Упрощение с помощью замены переменной

Рассмотрим уравнение

$
  y'' + a_1 (x) y' + a_2 (x) y = 0
$ <eq:2-order_lin_eq_4>

Переходим от переменной $x$ к новой переменной $t$ по формуле

$
  x = phi(t)
$

где $phi(t)$ --- пока не выбранная некоторая монотонная функция, $a_1 <= t <= b_1$.

Обратная замена:

$
  t = psi(x)
$

Имеем:

$
  y(x) = y(phi(t)) = z(t)
$

где $z(t)$ --- новая неизвестная функция.

$
  z(t) = z(psi(x)) = y(x)
$

Рассмотрим уравнение

$
  y(x) = z(psi(x))
$

$
  y'(x) = z'(t) (d t)/(d x) = z'(t) psi'(x)
$

$
  y''(x) = z''(t) (d t)/(d x) psi'(x) + z'(t) psi''(x)
$

Подставляем эти формулы в уравнение @eq:2-order_lin_eq_4:

$
  z''(t) (psi'(x))^2 + z'(t) psi''(x) + a_1 (x) z'(t) psi'(x) + a_2 (x) z(t) = 0
$

$
  (psi'(x))^2 z''(t) + (psi''(x) + a_1 (x) psi'(x)) z'(t) + a_2 (x) z(t) = 0
$ <eq:2-order_lin_eq_4_z>

@eq:2-order_lin_eq_4_z --- уравнение для $z(t)$.

Выберем $psi(x)$ как ненулевое решение уравнения

$
  psi'' + a_1 (x) psi' = 0
$ <eq:2-order_lin_eq_4_psi>

В уравнении @eq:2-order_lin_eq_4_psi нет $z'$.

Решаем это уравнение:

Переходим к новой неизвестной функции $u(x) = psi'(x)$.

Подставляем в @eq:2-order_lin_eq_4_psi:

$
  u'(x) + a_1 u(x) = 0
$

Это уравнение с разделяющимися переменными.

Находим $u(x)$, $psi(x) = integral u(x) d x$.

Пусть $psi(x)$ --- ненулевое частное решение уравнения @eq:2-order_lin_eq_4_psi.

$
  x = phi(t) = psi^(-1) (t)
$

Уравнение @eq:2-order_lin_eq_4_z примет вид

$
  (psi'(x))^2 z''(t) + a_2 (x) z(t) = 0
$

$
  z''(t) + B(t) z(t) = 0
$ <eq:2-order_lin_eq_4_z_solution>

где $B = (a_2 (x))/((psi'(x))^2)$.

Уравнение @eq:2-order_lin_eq_4_z_solution проще уравнения @eq:2-order_lin_eq_4, так как в нём нет $z'$.

==== Пример

Рассмотрим уравнение

$
  y'' + 1/(2 x) y' - 1/x y = 0, space x > 0
$ <eq:2-order_lin_eq_example_2>

Замена переменной $x = phi(t)$, $t = psi(x)$ --- обратная к $phi$.

Выбираем $psi(x)$ как любое ненулевое решение $psi'' + 1/(2 x) psi' = 0$.

Решаем это уравнение:

$
  psi'(x) = u(x), space psi''(x) = u'(x)
$

$
  u' + 1/(2 x) u = 0
$

Это уравнение с разделяющимися переменными.

$
  (d u)/u = -(d x)/(2 x)
$

$u(x) = 1/sqrt(x)$ --- ненулевое решение.

Имеем

$
  psi'(x) = 1/sqrt(x) ==> psi(x) = 2 sqrt(x)
$

Таким образом,

$
  t = 2 sqrt(x) ==> x = phi(t) = (t^2)/4
$

Имеем

$
  y(x) = y((t^2)/4) = z(t) = z(2 sqrt(x))
$

$
  y'(x) = z'(t) (d t)/(d x) = z'(t) 1/sqrt(x)
$

$
  y'' = z''(t) 1/sqrt(x) 1/sqrt(x) - z'(t) 1/(2 sqrt(x^3))
$

Подставляем эти формулы в уравнение @eq:2-order_lin_eq_example_2:

$
  z'' 1/x - 1/(2 sqrt(x^3)) z' + 1/(2 x) 1/sqrt(x) z' - 1/x z = 0
$

$
  z'' 1/x - 1/x z = 0
$

$
  z'' - z = 0
$ <eq:2-order_lin_eq_example_2_z>

Решаем уравнение @eq:2-order_lin_eq_example_2_z методом Эйлера.

Характеристическое уравнение:

$
  lambda^2 - 1 = 0
$

$lambda_(1, 2) = plus.minus 1$ --- случай простых корней.

Ф.С.Р.:

$
  z_1 (t) = e^t, space z_2 (t) = e^(-t)
$

Общее решение уравнения @eq:2-order_lin_eq_example_2_z:

$
  z(t) = c_1 e^t + c_2 e^(-t)
$

$y(x) = z(2 sqrt(x)) = c_1 e^(2 sqrt(x)) + c_2 e^(-2 sqrt(x))$ --- общее решение уравнения @eq:2-order_lin_eq_example_2.

=== Метод степенных рядов

Рассмотрим уравнение

$
  y'' - x y = 0
$

Это уравнение не имеет формулы для его решения.

Рассмотрим уравнение

$
  y'' + a_1 (x) y' + a_2 (x) y = f(x), space a <= x <= b
$ <eq:2-order_lin_eq_5>

==== Теорема

Предположим, что функции $a_1 (x), a_2 (x), f(x)$ можно разложить в степенные ряды на $[a, b]$.

Тогда любое решение уравнения @eq:2-order_lin_eq_5 тоже раскладывается в степенной ряд на отрезке $[a, b]$. (б/д)

==== Пример (на использование теоремы)

Рассмотрим уравнение

$
  y'' - x y = 0, space -infinity < x < infinity
$ <eq:2-order_lin_eq_example_3>

$a_1 (x) equiv 0 = 0 + 0 x + 0 x^2 + ... + 0 x^n + ...$ (сходится $forall x in RR$)

$a_2 (x) = -x = 0 + (-1) x + 0 x^2 + ... + 0 x^n + ...$ (сходится $forall x in RR$)

$f(x) equiv 0 = 0 + 0 x + 0 x^2 + ...$

Выполняются условия нашей теоремы.

Следовательно, любое решение уравнения @eq:2-order_lin_eq_example_3 раскладывается в степенной ряд, сходящийся на $(-infinity, infinity)$.

Пусть $c_0, c_1$ --- фиксированные произвольные числа.

Будем искать решение задачи Коши

$
  y'' - x y = 0, space y(0) = c_0, space y'(0) = c_1
$ <eq:2-order_lin_eq_example_3_cauchy>

Эта задача имеет единственное решение

$
  y(x) stretch(=)^"по нашей"_"теореме" a_0 + a_1 x + a_2 x^2 + a_3 x^3 + a_4 x^4 + ... = limits(sum)_(n = 0)^(infinity) a_n x^n
$ <eq:2-order_lin_eq_example_3_cauchy_solution>

где $a_0, a_1, ..., a_n, ...$ --- пока неизвестные числа.

Из уравнения @eq:2-order_lin_eq_example_3_cauchy_solution:

$
  y(0) = a_0 = c_0
$

$a_0$ найдено.

По свойству степенных рядов из уравнения @eq:2-order_lin_eq_example_3_cauchy_solution:

$
  y'(x) = 0 + a_1 + 2 a_2 x + 3 a_3 x^2 + 4 a_4 x^3 + ... + n a_n x^(n - 1) + ...
$ <eq:2-order_lin_eq_example_3_cauchy_solution_2>

Из уравнения @eq:2-order_lin_eq_example_3_cauchy_solution_2:

$
  y'(0) = a_1 = c_1
$

$a_1$ найдено.

Дифференцируем обе части уравнения @eq:2-order_lin_eq_example_3_cauchy_solution_2:

$
  y''(x) = 2 a_2 + 3 dot 2 a_3 x + 4 dot 3 a_4 x^2 + ... + n (n - 1) a_n x^(n - 2) + ... = \ = 2 a_2 + limits(sum)_(k = 1)^(infinity) (k + 2) (k + 1) a_(k + 2) x^k
$ <eq:2-order_lin_eq_example_3_cauchy_solution_3>

Рассмотрим уравнение

$
  x y(x) stretch(=)^("по" #ref(<eq:2-order_lin_eq_example_3_cauchy_solution>)) a_0 x + a_1 x^2 + a_2 x^3 + ... + a_(k - 1) x^k + ... = \ = limits(sum)_(k = 1)^(infinity) a_(k - 1) x^k
$ <eq:2-order_lin_eq_example_3_cauchy_solution_4>

Подставляем уравнения @eq:2-order_lin_eq_example_3_cauchy_solution_3 и @eq:2-order_lin_eq_example_3_cauchy_solution_4 в уравнение @eq:2-order_lin_eq_example_3:

$
  2 a_2 + limits(sum)_(k = 1)^(infinity) (k + 2) (k + 1) a_(k + 2) x^k - limits(sum)_(k = 1)^(infinity) a_(k - 1) x^k equiv 0
$

$
  2 a_2 + limits(sum)_(k = 1)^(infinity) [(k + 2)(k + 1) a_(k + 2) - a_(k - 1)] x^k equiv 0 = 0 + 0 x + 0 x^2 + ... + 0 x^k + ...
$

Отсюда, в силу единственности разложения в степенной ряд:

$
  cases(2 a_2 = 0 ==> a_2 = 0, (k + 2)(k + 1) a_(k + 2) - a_(k - 1) = 0\, space k = 1\, 2\, ...)
$

Получили рекуррентную формулу

$
  a_(k + 2) = (a_(k - 1))/((k + 2)(k + 1)), space k = 1, 2, ...
$

Обозначим $n = k - 1$. Тогда эта формула примет вид

$
  a_(n + 3) = (a_n)/((n + 3)(n + 2)), space n = 0, 1, 2, ...
$ <eq:2-order_lin_eq_example_3_recurrent>

Рассмотрим $a_0 = c_0, a_1 = c_1, a_2 = 0, a_3, a_4, a_5, a_6, a_7, ...$

При $n = 0$ из формулы @eq:2-order_lin_eq_example_3_recurrent:

$
  a_3 = (a_0)/(3 dot 2) = (c_0)/(3 dot 2)
$

Нашли $a_3$.

При $n = 3$:

$
  a_6 = (a_3)/(6 dot 5) = (c_0)/(3 dot 2 dot 6 dot 5)
$

При $n = 6$:

$
  a_9 = (c_0)/(3 dot 2 dot 6 dot 5 dot 9 dot 8)
$

И так далее...

$
  a_(3 k) = (c_0)/(3 dot 2 dot 6 dot 5 dot ... dot 3 k (3 k - 1)), space k = 1, 2, ...
$ <eq:2-order_lin_eq_example_3_recurrent_1>

При $n = 1$ из формулы @eq:2-order_lin_eq_example_3_recurrent:

$
  a_4 = (a_1)/(3 dot 4) = (c_1)/(3 dot 4)
$

При $n = 4$:

$
  a_7 = (a_4)/(6 dot 7) = (c_1)/(3 dot 4 dot 6 dot 7)
$

И так далее...

$
  a_(3 k + 1) = (c_1)/(4 dot 3 dot 7 dot 6 dot ... dot 3 k (3 k + 1)), space k = 1, 2, ...
$ <eq:2-order_lin_eq_example_3_recurrent_2>

При $n = 2$ из формулы @eq:2-order_lin_eq_example_3_recurrent:

$
  a_5 = (a_2)/(5 dot 4) = 0, space a_10 = 0, ...
$

$
  a_(3 k + 2) = 0, space k = 1, 2, ...
$ <eq:2-order_lin_eq_example_3_recurrent_3>

Мы нашли все $a_n$ из формулы @eq:2-order_lin_eq_example_3_recurrent.

Преобразуем решение

$
  y(x) = limits(sum)_(n = 0)^(infinity) a_n x^n = \ = limits(sum)_(k = 0)^(infinity) a_(3 k) x^(3 k) + limits(sum)_(n = 0)^(infinity) a_(3 k + 1) x^(3 k + 1) + limits(sum)_(n = 0)^(infinity) a_(3 k + 2) x^(3 k + 2) = \ = c_0 underbrace((a_0 + limits(sum)_(k = 1)^(infinity) (x^(3 k))/(3 dot 2 dot 6 dot 5 dot ... dot 3 k (3 k - 1))), phi_1 (x)) + c_1 underbrace((x + limits(sum)_(k = 1)^(infinity) (x^(3 k + 1))/(3 dot 4 dot 6 dot 7 dot ... dot 3 k (3 k + 1))), phi_2 (x))
$

Так как $c_0, c_1$ --- любые числа, то общее решение уравнения @eq:2-order_lin_eq_example_3 имеет вид

$
  y(x) = c_1 phi_1 (x) + c_2 phi_2 (x)
$

где $c_1, c_2$ --- произвольные константы.
