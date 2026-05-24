=== Линейность оператора $l(y)$ (теорема 1 и следствие)

_Пусть $z(x)$ --- функция $n$ раз дифференцируемая на $[a, b]$._

_Обозначим:_

$
  l(z) = z^((n)) (x) + a_1 (x) z^((n-1)) (x) + ... + a_n (x) z(x).
$

==== Теорема 1

$forall alpha in CC$, $z_1 (x)$, $z_2 (x) in CC^n$ выполняются условия:

+ $l(alpha z_1 (x)) = alpha l(z_1 (x))$;
+ $l(z_1 (x) + z_2 (x)) = l(z_1 (x)) + l(z_2 (x))$.

// Нужно ли здесь доказательство? В программе оно не спрашивается, но пусть будет

===== Доказательство

+ $l(alpha z_1 (x)) = (alpha z_1 (x))^((n)) + a_1 (alpha z_1 (x))^((n-1)) + ... + a_n (alpha z_1 (x)) = alpha (z_1^((n)) (x) + ... + alpha_n z_1 (x)) = alpha l(z_1 (x))$;
+ $l(z_1 (x) + z_2 (x)) = (z_1 (x) + z_2 (x))^((n)) + a_1(x) (z_1 (x) + z_2 (x))^((n-1)) + ... + a_n (x) (z_1 (x) + z_2 (x)) = (z_1^((n)) (x) + a(x) z_1^((n-1)) (x) + ... + a_n (x) z_1 (x)) + (z_2^((n)) (x) + a (x) z_2^((n-1)) (x) + ... + a_n (x) z_2 (x)) = l(z_1 (x)) + l(z_2 (x))$.

==== Замечание

Легко показать, что $forall z_1 (x), ..., z_m (x) in CC^m, alpha_1, ..., alpha_m in CC$:

$
  l(limits(sum)^(k=1)_m alpha_k z_k (x)) = limits(sum)_(k=1)^m alpha_k l(z_k (x))
$

==== Следствие

Пусть $phi_1 (x), ..., phi_m (x)$ --- произвольное решение $y^((n)) + a_1 (x) y^((n-1)) + ... + a_n (x) y = 0$, $alpha_1, ..., alpha_m$ --- произвольные числа.

Тогда функция $phi(x) = underbrace(alpha_1 phi_1 (x) + alpha_2 phi_2 (x) + ... + alpha_m phi_m (x), "лин. комбинация")$ --- тоже решение.

===== Доказательство

Рассмотрим $l(phi(x)) = l(limits(sum)_(k=1)^m alpha_k phi_k (x)) stretch(=)^"по"_"замечанию" limits(sum)_(k=1)^m alpha_k underbrace((phi_k (x)), equiv 0) equiv 0 ==> phi(x)$ --- решение.

=== Необходимое условие линейной зависимости (теорема 2)

Если $phi_1 (x), ..., phi_n (x)$ --- линейно зависимы на $[a, b]$, то $W(x) equiv 0$.

==== Доказательство

Пусть $phi_1 (x), ..., phi_n (x)$ --- линейно зависимы на$[a, b]$: $exists alpha_1, ..., alpha_n$ --- не все равные 0, такие, что

$
  alpha_1 phi_1 (x) + ... + alpha_n phi_n (x) equiv 0
$ <linear_theorem_1>

Рассмотрим $W(x)$ при любом фиксированном $x in [a, b]$.

Умножим первый столбец на $alpha_1$, второй на $alpha_2$, ..., последний на $alpha_n$ и сложим все эти столбцы.

Получим столбец:

$
  V(x) = mat(
    alpha_1 phi_1 (x) + alpha_2 phi_2 (x) + ... + alpha_n phi_n (x);
    alpha_1 phi_1^' (x) + alpha_2 phi_2^' (x) + ... + alpha_n phi_n^' (x);
    ...;
    alpha_1 phi_1^((n-1)) (x) + alpha_2 phi_2^((n-1)) (x) + ... + alpha_n phi_n^((n-1)) (x);
  )
$

Теперь дифференцируем @linear_theorem_1:

$
  cases(
    alpha_1 phi_1 (x) + ... + alpha_n phi_n (x) equiv 0,
    alpha_1 phi_1^' (x) + ... + alpha_n phi_n^' (x) equiv 0,
    ...,
    alpha_1 phi_1^((n-1)) (x) + ... + alpha_n phi_n^((n-1)) (x) equiv 0,
  )
$ <linear_theorem_2>

Из @linear_theorem_1 и @linear_theorem_2 при взятом фиксированном $x$ следует, что $V(x) = mat(0; 0; ...; 0)$ $==>$ столбцы $W(x)$ линейно зависимы $==> W(x) = 0$.

Так как $x$ --- любое фиксированное число, то $W(x) equiv 0$.

=== Необходимое условие линейной независимости (теорема 4)

Если $phi_1 (x), ..., phi_n (x)$ --- фундаментальная система решений уравнения @linear_equations, то $W(x) != 0$ $forall x in [a, b]$.

==== Доказательство

Пусть $phi_1 (x), ..., phi_n (x)$ --- фундаментальная система решений.

Предположим, что $exists x_0 in [a, b]$: $W(x_0) = 0 stretch(==>)^"по теореме"_"из алгебры"$ столбцы $W(x_0)$ линейно зависимы, значит $exists alpha_1, ..., alpha_n$ --- числа, не все равные 0, такие, что:

$
  alpha_1 mat(phi_1 (x_0); phi_1^' (x_0); ...; phi_1^((n-1)) (x_0)) + ... + alpha_n mat(phi_n (x_0); phi_n^' (x_0); ...; phi_n^((n-1)) (x_0)) = mat(0; 0; ...; 0)
$

$
  mat(
    alpha_1 phi_1 (x_0) + ... + alpha_n phi_n (x_0);
    alpha_1 phi_1^' (x_0) + ... + alpha_n phi_n^' (x_0);
    ...;
    alpha_1 phi_1^((n-1)) (x_0) + ... + alpha_n phi_n^((n-1)) (x_0);
  )
  =
  mat(0; 0; ...; 0)
  <==>
  cases(
    alpha_1 phi_1 (x_0) + ... + alpha_n phi_n (x_0) = 0,
    alpha_1 phi_1^' (x_0) + ... + alpha_n phi_n^' (x_0) = 0,
    ...,
    alpha_1 phi_1^((n-1)) (x_0) + ... + alpha_n phi_n^((n-1)) (x_0) = 0
  )
$

Обозначим $phi(x) = limits(sum)_(k=1)^n alpha_n phi_n (x)$ --- решение @linear_equations (следствие из теоремы 1).

Рассмотрим $phi(x_0) = 0, phi'(x_0) = 0, ..., phi^((n-1)) (x_0) = 0$.

Это означает, что $phi(x)$ --- решение задачи Коши.

$
  l(y) = 0, y(x_0) = 0, ..., y^((n-1)) (x_0) = 0
$ <idk_how_to_name_this>

В силу единственности решения @idk_how_to_name_this $phi(x) = phi_0 (x) equiv 0$ или $underbrace((sum)_(k=1)^n alpha_k phi_k (x) equiv 0, #text[не все $alpha_k$ равны 0]) ==> phi_1 (x), ..., phi_n (x)$ --- линейно зависимая система на $[a, b]$, что противоречит начальному условию.

Следовательно, $W(x) != 0$ $forall x in [a, b]$.

=== Существование фундаментальной системы решений (теорема 5)

Рассмотрим линейное однородное уравнение:

$
  y^((n)) + a_1 (x) y^((n-1)) + ... + a_n (x) y = 0, a <= x <= b
$ <linear_odnorodnoe>

Фундаментальная система решений уравнения @linear_odnorodnoe существует.

==== Доказательство

Пусть $x_0 in [a, b]$. Рассмотрим задачу Коши:

$
  l(y) = 0, y(x_0) = 1, y' (x_0) = 0, ..., y^((n-1)) (x_0) = 0.
$

По теореме 3 эта задача имеет единственное решение $phi_1 (x)$.

Рассмотрим другую задачу Коши:

$
  l(y) = 0, y(x_0) = 0, y' (x_0) = 1, y'' (x_0) = 0, ..., y^((n-1)) (x_0) = 0.
$

Обозначим через $phi_2 (x)$ её решение.

И так далее...

Последняя задача Коши:

$
  l(y) = 0, y(x_0) = 0, y' (x_0) = 0, ..., y^((n-1)) (x_0) = 1
$

Обозначим через $phi_n (x)$ её решение.

Таким образом получим $n$ решений уравнения @linear_odnorodnoe: $phi_1 (x), phi_2 (x), ..., phi_n (x)$.

Покажем, что эти решения образуют фундаментальную систему решений уравнения @linear_odnorodnoe.

Рассмотрим определитель Вронского:

#set math.mat(delim: "|")
$
  W(x) = mat(
    phi_1 (x), ..., phi_n (x);
    phi_1^' (x), ..., phi_n^' (x);
    dots.v, dots.down, dots.v;
    phi_1^((n-1)) (x), ..., phi_n^((n-1)) (x);
  )
  =
  mat(
    phi_1 (x_0), ..., phi_n (x_0);
    phi_1^' (x_0), ..., phi_n^' (x_0);
    dots.v, dots.down, dots.v;
    phi_1^((n-1)) (x_0), ..., phi_n^((n-1)) (x_0);
  )
  = mat(
    1, 0, ..., 0;
    0, 1, ..., 0;
    dots.v, dots.v, dots.down, dots.v;
    0, 0, ..., 1
  )
  = 1 != 0.
$

Следовательно, по теореме 2, $phi_1 (x), ..., phi_n (x)$ --- линейно независимые функции, т. е. фундаментальная система решений.

=== Общее решение уравнение $l(y) = 0$ (теорема 6)

Пусть $phi_1(x), ..., phi_n(x)$ --- фундаметальная система уравнения.

$
  y^((n)) + a_1 (x) y^((n-1)) + ... + a_n(x) y = 0, a <= x <= b
$ <general_equation>

Тогда общее решение уравнения @general_equation имеет вид

$
  y(x) = c_1 phi_1(x) + c_2 phi_2(x) + ... + c_n phi_n(x),
$ <general_solution>

где $c_1, ..., c_n$ — произвольные константы.

==== Доказательство

Очевидно, что при любых значениях $c_1, c_2, ..., c_n$ формула @general_solution дает решение @general_equation (см. следствие из теоремы 1).

Покажем, что формула @general_solution содержит все решения уравнения @general_equation.

Пусть $z(x)$ --- произвольное решение уравнения @general_equation, $x_0 in [a, b]$.

Покажем, что $z(x)$ содержится в @general_solution при некоторых значениях $c_1, c_2, ..., c_n$.

Рассмотрим систему уравнений:

$
  cases(
    c_1 phi_1 (x_0) + c_2 phi_2 (x_0) + ... + c_n phi_n (x_0) = z(x_0),
    c_1 phi_1^' (x_0) + c_2 phi_2^' (x_0) + ... + c_n phi_n^' (x_0) = z^'(x_0),
    ...,
    c_1 phi_1^((n-1)) (x_0) + c_2 phi_2^((n-1)) (x_0) + ... + c_n phi_n^((n-1)) (x_0) = z^((n-1)) (x_0)
  )
$ <linear_system_of_solutions>

@linear_system_of_solutions --- лин. алг. система уравнений относительно $c_1, ..., c_n$.

Её определитель:

#set math.mat(delim: "|")
$
  Delta = mat(
    phi_1(x_0), ..., phi_n (x_0);
    phi_1^' (x_0), ..., phi_n^' (x_0);
    dots.v, dots.down, dots.v;
    phi_1^((n-1))(x_0), dots.h, phi_n^((n-1))(x_0)
  ) = W(x_0) limits(!=)^"по теореме 4" 0.
$

$==>$ по теореме из алгебры система @linear_system_of_solutions имеет единственное решение $c_1^0, ..., c_n^0$.

Обозначим $u(x) = c_1^0 phi_1 (x) + ... + c_n^0 phi_n (x)$ --- решение @general_equation.

Имеем:

$
  u(x_0) = z(x_0) \
  u' (x_0) = z' (x_0) \
  ... \
  u^((n-1)) (x_0) = z^((n-1)) (x_0)
$

В силу единственности решения, $u(x) equiv z(x)$, $u(x)$ и $z(x)$ являются решениями одной и той же задачи Коши.

Таким образом $z(x) = c_1^0 phi_1 (x) + ... + c_n^0 phi_n (x)$.

=== Общее решение уравнения $l(y) = f(x)$ (теорема 7)

Рассмотрим неоднородное уравнение

$
  y^((n)) + a_1 (x) y^((n-1)) (x) + ... + a_n (x) y(x) = f(x), a <= x <= b
$ <equation_neodnorod_1>

Пусть $phi_1 (x), ..., phi_n (x)$ --- фундаментальная система решений соответствующего однородного уравнения:

$
  y^((n)) + a_1(x) y^((n-1))(x) + ... + a_n(x) y(x) = 0,
$ <equation_neodnorod_2>

$y_1(x)$ — частное решение уравнения @equation_neodnorod_1.

Тогда общее решение уравнения @equation_neodnorod_1 имеет вид:

$
  y(x) = с_1 phi_1(x) + ... + с_n phi_n(x) + y_1(x),
$ <equation_neodnorod_3>

где $c_1, ..., c_n$ --- произвольные числа.

==== Доказательство

Убедимся, что @equation_neodnorod_3 при любых $c_1, ..., c_n$ дает решение @equation_neodnorod_1:

$
  l(c_1 phi_1(x) + ... + c_n phi_n(x) + y_1 (x))
  stretch(=)_"линейность"
  c_1 underbrace(l(phi_1 (x)), equiv 0) + \
  + c_2 underbrace(l(phi_2 (x)), equiv 0) + ... + c_n underbrace(l(phi_n (x)), equiv 0) +
  underbrace(l(y_1 (x)), equiv f(x))
  equiv f(x)
$

$==>$ @equation_neodnorod_3 даёт решение @equation_neodnorod_1 при любых $c_1, ..., c_n$.

Покажем, что в @equation_neodnorod_3 содержатся все решения @equation_neodnorod_1.
Пусть $z(x)$ --- произвольное решение @equation_neodnorod_1, т.е. $l(z(x)) = f(x)$.

Обозначим

$
  u(x) = z(x) - y_1(x).
$ <equation_neodnorod_4>

Рассмотрим

$
  l(u(x)) = underbrace(l(z(x)), equiv f(x)) - underbrace(l(y_1 (x)), equiv f(x)) equiv 0
$

$==> u(x)$ --- решение однородного уравнения @equation_neodnorod_2.

По теореме 6: $u(x) = C_1^0 phi_1(x) + ... + C_n^0 phi_n (x)$ <equation_neodnorod_5>

Из @equation_neodnorod_4 и @equation_neodnorod_5 получаем:
$
  z(x) stretch(=) u(x) + y_1 (x) stretch(=) c_1^0 phi_1(x) + ... + C_n^0 phi_n (x) + y_1(x) = z(x).
$

Значит ур-е @equation_neodnorod_3 даёт все решения @equation_neodnorod_1.

=== Алгоритм метода вариации и его обоснование

Рассмотрим уравнение

$
  y^((n)) + alpha_1 (x) y^((n-1)) + ... + a_n (x) y = f (x); l(y) = f(x), a <= x <= b.
$ <variation_method_1>

Пусть $phi_1 (x), ..., phi_n (x)$ --- фундаментальная система решений соответствующего однородного уравнения

$
  y^((n)) + alpha_1 (x) y^((n-1)) + ... + alpha_n (x) y = 0
$ <variation_method_2>

==== Метод вариации произвольных постоянных (метод нахождения частного решения уравнения @variation_method_1)

===== Алгоритм метода вариации

1. Ищем частное решение $y_"ч" (x)$ в виде

$
  y_"ч" (x) = c_1 (x) phi_1 (x) + c_2 (x) phi_2 (x) + ... + c_n (x) phi_n (x),
$ <variation_method_3>

где $c_1 (x), ..., c_n (x)$ --- пока неизвестные функции.

2. Рассмотрим систему уравнений

$
  cases(
    c_1^' (x) phi_1 (x) + c_2^' phi_2 (x) + ... + c_n^' phi_n (x) = 0,
    c_1^' (x) phi_1^' (x) + c_2^' phi_2^' (x) + ... + c_n^' phi_n^' (x) = 0,
    ...,
    c_1^' (x) phi_1^((n-2)) (x) + c_2^' phi_2^((n-2)) (x) + ... + c_n^' phi_n^((n-2)) (x) = 0,
    c_1^' (x) phi_1^((n-1)) (x) + c_2^' phi_2^((n-1)) (x) + ... + c_n^' phi_n^((n-1)) (x) = f(x),
  )
$ <variation_method_4>

Фиксируем $x in [a, b]$, система @variation_method_4 --- линейная алгебраическая система относительно $c_1^' (x), ..., c_n^' (x)$.

Определитель этой системы:

#set math.mat(delim: "|")
$
  Delta = mat(
    phi_1(x), dots.h, phi_n(x);
    phi_1^'(x), dots.h, phi_n^'(x);
    dots.v, dots.down, dots.v;
    phi_1^((n-1))(x), dots.h, phi_n^((n-1))(x)
  ) = W(x) limits(!=)^script("По теореме 4") 0
$

По теореме из алгебры @variation_method_4 имеет единственное решение.

3. Решаем систему @variation_method_4 по формулам Крамера

$
  C_1^' (x) = mat(
    0, phi_2 (x), ..., phi_n (x);
    0, phi_2^' (x), ..., phi_n^' (x);
    dots.v, dots.v, dots.down, dots.v;
    f(x), phi_2^((n-1)) (x), ..., phi_n^((n-1)) (x);
  )/W(x),
  C_2^' (x) = mat(
    phi_1 (x), 0, ..., phi_n (x);
    phi_1^' (x), 0, ..., phi_n^' (x);
    dots.v, dots.v, dots.down, dots.v;
    phi_1^((n-1)) (x), f(x), ..., phi_n^((n-1)) (x);
  )/W(x),
  ...
$

4. "Отпускаем" $x$ и находим $C_1 (x) = integral C_1^' (x) d x, ..., C_n (x) = integral C_n^' (x) d x$

5. Подставляем $C_1 (x), ..., C_n (x)$ в @variation_method_3 получаем $y_"ч" (x)$.

===== Обоснование метода вариации

Для $n = 2$:

$
  y'' + a_1 (x) y' + a_2 (x) y = f(x)
$ <variation_method_proof_1>


$
  y'' + a_1 (x) y' + a_2 (x) y = 0
$ <variation_method_proof_2>

$phi_1 (x), phi_2 (x)$ --- фундаментальная система решений.

Ищем $y_"ч"$ в виде

$
  y_"ч" (x) = C_1 (x) phi_1 (x) + C_2 (x) phi_2 (x),
$ <variation_method_proof_3>

где $C_1 (x), C_2 (x)$ находим из системы:

$
  cases(
    C_1^' (x) phi_1 (x) + C_2^' (x) phi_2 (x) = 0,
    C_1^' (x) phi_1^' (x) + C_2^' (x) phi_2^' (x) = f(x),
  )
$ <variation_method_proof_4>

Покажем, что @variation_method_proof_3 действительно даёт решение уравнения @variation_method_proof_1.

Рассмотрим

$
  l(y_"ч" (x)) = y_"ч"^'' (x) + a_1 (x) y_"ч"^' (x) + a_2 (x) y_"ч"^' (x)
$ <variation_method_proof_5>

Вычисляем

$y_"ч"^' (x) = C_1^' (x) phi_1 (x) + C_1 (x) phi_1^' (x) + C_2^' (x) phi_2 (x) + C_2 (x) phi_2^' (x) = C_1 (x) phi_1^' (x) + C_2 (x) phi_2^' (x)$.
$
  y_"ч"^'' (x) = C_1^' (x) phi_1^' (x) + C_1 (x) phi_1^'' (x) + C_2^' (x) phi_2^' (x) + C_2 (x) phi_2^'' (x) = f(x) + C_1 (x) phi_1^'' (x) + C_2 (x) phi_2^'' (x).
$

Подставляем в @variation_method_proof_5.

$
  l(y_"ч" (x)) =
  f(x) + C_1 (x) phi_1^'' (x) + C_2 phi_2^'' (x) + a_1 (x) [C_1 (x) phi_1^' (x) + C_2 (x) phi_2^' (x)] +
  a_2 (x) [C_1 (x) phi_1 (x) + C_2 (x) phi_2 (x)] \ = f(x) + C_1 (x) [phi_1^'' (x) + a_1 (x) phi_1^' (x) + a_2 (x) phi_2 (x)] + C_2 (x) [phi_2^'' (x) + a_1 (x) phi_1^' (x) + a_2 (x) phi_2 (x)] = f(x).
$

То есть $l(y_"ч" (x)) equiv f(x) ==> y_"ч" (x)$ --- решение @variation_method_proof_1.

=== Пример решения методом вариации

Рассмотрим уравнение

$
  y'' omega^2 y = f(x), space omega > 0, space a <= x <= b
$ <variation_method_example_1>

$f(x)$ --- заданная функция.

Решим соответствующее однородное уравнение

$
  y'' + omega^2 y = 0
$ <variation_method_example_2>

Легко показать, что $phi_1 (x) = cos omega x, phi_2 (x) = sin omega x$ --- решения уравнения @variation_method_example_2.

Рассмотрим определитель Вронского этих функций:

$
  W(x) = mat(delim: "|", phi_1 (x), phi_2 (x); phi'_1 (x), phi'_2 (x)) = mat(delim: "|", cos omega x, sin omega x; - omega sin omega x, omega cos omega x) = omega cos^2 omega x + omega sin^2 omega x = omega != 0
$

$W(x) != 0 ==>$ по теореме 2 $phi_1 (x), phi_2 (x)$ линейно независимы на $[a, b]$, то есть образуют ф.с.р.

По теореме 6 общее решение уравнения @variation_method_example_2 имеет вид

$
  y_0 (x) = c_1 cos omega x + c_2 sin omega x
$

Найдём частное решение уравнения @variation_method_example_1 методом вариации произвольных постоянных.

Ищем $y_"ч" (x)$ в виде

$
  y_"ч" (x) = c_1 (x) cos omega x + c_2 (x) sin omega x
$ <variation_method_example_3>

где $c_1 (x), c_2 (x)$ --- пока неизвестные функции.

Функции $c_1 (x), c_2 (x)$ ищем как решения следующей системы:

$
  cases(c'_1 (x) cos omega x + c'_2 (x) sin omega x = 0, c'_1 (x) (- omega sin omega x) + c'_2 (x) omega cos omega x = f(x))
$ <variation_method_example_4>

Определитель этой системы:

$
  Delta = W(x) = omega
$

По формулам Крамера

$
  c'_1 (x) = mat(delim: "|", 0, sin omega x; f(x), omega cos omega x)/omega = -1/omega f(x) sin omega x
$

$
  c'_2 (x) = mat(delim: "|", cos omega x, 0; -omega sin omega x, f(x))/omega = 1/omega f(x) cos omega x
$

$
  c_1 (x) = limits(integral)_(x_0 in [a, b]) c'_1 (x) d x = - 1/omega limits(integral)_(x_0)^(x) f(t) sin omega t d t
$

$
  c_2 (x) = 1/omega limits(integral)_(x_0)^(x) f(t) cos omega t d t
$

Подставляем эти формулы в @variation_method_example_3:

$
  y_"ч" (x) = cos omega x dot (-1/omega) limits(integral)_(x_0)^(x) f(t) sin omega t d t + sin omega x dot 1/omega limits(integral)_(x_0)^(x) f(t) cos omega t d t = \ = 1/omega limits(integral)_(x_0)^(x) (-cos omega x sin omega t + sin omega x cos omega t) f(t) d t = 1/omega limits(integral)_(x_0)^(x) sin omega (x - t) dot f(t) d t
$

По теореме 7 общее решение @variation_method_example_1 имеет вид

$
  y = c_1 cos omega x + c_2 sin omega x + 1/omega limits(integral)_(x_0)^(x) f(t) sin omega (x - t) d t, space x_0 in [a, b]
$

где $c_1, c_2$ --- произвольные константы.

=== Метод Эйлера

// Не уверен, что замечание и формула нужны
==== Замечание

$
  e^a = 1 + a + (a^2)/(2!) + ... + (a^k)/(k!) + ...
$

Этот ряд сходится при любом вещественном $a$.

Пусть $lambda = alpha + i gamma$, $alpha, gamma$ --- вещественные числа.

Определим $e^lambda$:

$
  e^lambda = 1 + lambda + (lambda^2)/(2!) + ... + (lambda^k)/(k!) + ...
$

Этот ряд сходится при любом $lambda$.

==== Формула Эйлера

$
  e^lambda = e^alpha (cos gamma + i sin gamma) = e^("Re" lambda) (cos "Im" lambda + i sin "Im" lambda)
$

Рассмотрим функцию при вещественном $x$:

$
  e^(lambda x) = 1 + lambda x + (lambda x)^2/(2!) + ... + (lambda x)^k/(k!) + ... = e^(alpha x) (cos gamma x i sin gamma x) - #[комплексная функция.]
$

Найдём

$
  d/(d x) e^(lambda x) = lambda + (lambda^2)/(2!) 2 x + (lambda^3)/(3!) 3 x^2 + ... + (lambda^k)/(k!) k x^(k - 1) + ... = \ = lambda (1 + lambda x + (lambda x)^2/(2!) + ... + (lambda x)^(k - 1)/((k - 1)!) + ...) = lambda e^(lambda x)
$

==== Метод Эйлера

Рассмотрим уравнение

$
  y^((n)) + a_1 y^((n-1)) + ... + a_n y = 0,
$ <euler_method_1>

где $a_1, ..., a_n in CC$.

Ищем его решение методом Эйлера.

Найдём частное решение уравнения @euler_method_1 в виде

$
  y = e^(lambda x),
$

где $lambda$ --- какое-то число, $e^(lambda x) != 0$.

Вычисляем

$
  y'(x) = lambda e^(lambda x)
$

$
  y''(x) = lambda^2 e^(lambda x)
$

$ ... $

$
  y^((n))(x) = lambda^n e^(lambda x)
$

Подставляем в @euler_method_1:

$
  lambda^n e^(lambda x) + a_1 lambda^(n - 1) e^(lambda x) + ... + a_n e^(lambda x) equiv 0
$

$
  lambda^n + a_1 lambda^(n - 1) + ... + a_(n - 1) lambda + a_n = 0
$ <euler_method_2>

==== Вывод:

$y = e^(lambda x)$ является решением уравнения @euler_method_1 $<==>$ $lambda$ --- корень уравнения @euler_method_2.

==== Определение

Алгебраическое уравнение @euler_method_2 называется характеристическим уравнением для @euler_method_1.

По основной теореме алгебры у уравнения @euler_method_2 корней будет не больше $n$.

==== Случай простых корней

Предположим, что @euler_method_2 имеет $n$ попарно различных корней $lambda_1, lambda_2, ..., lambda_n$.

В этом случае мы имеем $n$ решений уравнения @euler_method_1:

$
  y_1 (x) = e^(lambda_1 x), y_2 (x) = e^(lambda_2 x), ..., y_n (x) = e^(lambda_n x).
$

==== Лемма 1

$y_1 (x) = e^(lambda_1 x), ..., y_m (x) = e^(lambda_m x)$ линейно независимы на произвольном отрезке $[a, b]$, если $lambda_j != lambda_k$, $j != k$, $m in NN$.

===== Доказательство

По индукции относительно $m$:

Случай $m = 1$:

$a e^(lambda_1 x) equiv 0 <==> a = 0$.

Следовательно, ${e^(lambda_1 x)}$ линейно независимо.

Предположим, что $e^(lambda_1 x), ..., e^(lambda_m x)$ линейно независимы.

Пусть $lambda_(m + 1) != lambda_j$, $1 <= j <= m$.

Докажем, что $e^(lambda_i x), ..., e^(lambda_m x), e^(lambda_(m + 1) x)$ линейно независимы на $[a, b]$.

Предположим противное:

$exists r_1, ..., r_(m + 1)$ --- числа, не все равные нулю.

$
  r_1 e^(lambda_1 x) + ... + r_(m + 1) e^(lambda_(m + 1) x) equiv 0, space r_(m + 1) != 0
$ <euler_method_3>

Поделим на $e^(lambda_(m + 1) x)$:

$
  r_1 e^((lambda_1 - lambda_(m + 1)) x) + ... + r_m e^((lambda_m - lambda_(m + 1)) x) + r_m equiv 0
$

$
  r_1 e^(tilde(lambda_1) x) + ... + r_m e^(tilde(lambda_m) x) + r_m equiv 0, space tilde(lambda_j) = lambda_j - lambda_(m + 1)
$

$
  r_1 tilde(lambda_1) e^(tilde(lambda_1) x) + ... + r_m tilde(lambda_m) e^(tilde(lambda_m) x) equiv 0, space tilde(lambda_1) != 0, ..., tilde(lambda_m) != 0
$

Следовательно, по предположению индукции, $r_1 tilde(lambda_1) = 0, ..., r_m tilde(lambda_m) = 0 ==> r_1 = 0, r_2 = 0, ..., r_m = 0$.

Теперь из @euler_method_3

$
  r_(m + 1) e^(lambda_(m + 1) x) equiv 0 ==> r_(m + 1) = 0
$

Противоречие.

Таким образом, $e^(lambda_1 x), ..., e^(lambda_(m + 1) x)$ линейно независимы.

==== Итог

Если $lambda_1, ..., lambda_n$ --- попарно различные корни характеристического уравнения, то $y_1 (x) = e^(lambda_1 x), ..., y_n (x) = e^(lambda_n x)$ --- фундаментальная система решений уравнения @euler_method_1.

По теореме 6 общее решение @euler_method_1 имеет вид

$
  y = c_1 e^(lambda_1 x) + c_2 e^(lambda_2 x) + ... + c_n e^(lambda_n x)
$

==== Общий случай

Рассмотрим уравнение @euler_method_1. @euler_method_2_2 --- его характеристическое уравнение.

$
  lambda^n + a_1 lambda^(n - 1) + ... + a_(n - 1) lambda + a_n = 0
$ <euler_method_2_2>

Пусть $lambda_1$ --- корень кратности $k_1$, $lambda_2$ --- корень кратности $k_2$, ..., $lambda_m$ --- корень кратности $k_m$, $m <= n$, $k_1 + ... + k_m = n$.

Из алгебры

$
  (lambda - lambda_1)^(k_1) dot (lambda - lambda_2)^(k_2) dot ... dot (lambda - lambda_m)^(k_m) = 0
$

Корень $lambda_1$ даёт следующие частные решения уравнения @euler_method_1:

$
  underbrace(e^(lambda_1 x)\, x e^(lambda_1 x)\, x^2 e^(lambda_1 x)\, ...\, x^(k_1 - 1) e^(lambda_1 x), k_1 "решений")
$

$lambda_2$ даёт решения

$
  underbrace(e^(lambda_2 x)\, x e^(lambda_2 x)\, x^2 e^(lambda_2 x)\, ...\, x^(k_2 - 1) e^(lambda_2 x), k_2 "решений")
$

И так далее...

$lambda_m$ даёт решения

$
  underbrace(e^(lambda_m x)\, x e^(lambda_m x)\, x^2 e^(lambda_m x)\, ...\, x^(k_m - 1) e^(lambda_m x), k_m "решений")
$

Всего будет $k_1 + k_2 + ... + k_m = n$ решений уравнения @euler_method_1.

Таким образом находится фундаментальная система решений $phi_1 (x), ..., phi_n (x)$

Общее решение:

$
  y = c_1 phi_1 (x) + ... + c_n phi_n (x)
$
