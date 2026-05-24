#let make_toc = () => {
  show outline.entry: it => {
    it
  }
  outline(title: [СОДЕРЖАНИЕ], depth: 3)
  pagebreak()
}

#let generate_title() = {
  set align(center)
  v(1.5cm)
  text(weight: "bold", upper("Дифференциальные уравнения") + "\n")
  [*4 семестр*]
  par("Материалы для подготовки к зачету")
  v(1.5cm)
  set align(left)
  text("Смирнов Егор" + "\n")
  text("Рудяк Артем" + "\n")
  text("Лазарева Виктория" + "\n")
  text("Тюменцев Радомир" + "\n")
  text("Железко Александр" + "\n")
  text("Архипов Иван" + "\n")
  text("Леонтьев Михаил" + "\n")
  v(1fr)
  set align(center)
  text("г. Саратов" + " " + str(datetime.today().year()))
  pagebreak()
}

