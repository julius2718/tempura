
#let sans(it, font: ("Helvetica", "Hiragino Sans", "BIZ UDPGothic")) = {
  text(font: font)[
    #it
  ]
}

#let gtheading(it, font: ("Helvetica", "Hiragino Sans", "BIZ UPDGothic")) = {
  text(sans(font: font)[#h(-1em) *#it* #h(1em)])
}

#let signature(title: "", date: "", author: "") = {
  align(center, text(1.4em)[
    *#title*
    #v(0.6em)
  ])
  align(center, text(1.1em)[
    #date
    #v(0.6em)
    #author
  ])
  v(0.6em)
}

#let jpdoc(doc) = {

  set text(font: ("STIX Two Text", "Hiragino Mincho ProN", "BIZ UDPMincho"), size: 11pt,)
  show math.equation: set text(font: "STIX Two Math")
  show raw: set text(font: "Osaka", size: 1.4em)

  set heading(numbering: "1.")

  set page(margin: (top: 30mm, rest: 25mm), numbering: "1")
  set par(first-line-indent: 1em, justify: true, leading: 1em)
  set block(spacing: 1em)

  show heading: it => {
    v(0.6em)
    it
    par(text(size: 0.6em, ""))
  }

  [#doc]

}

#let jpprez(doc) = {
  import "@preview/polylux:0.3.1": *

  set page(
    paper: "presentation-16-9",
    footer: [
      #set align(right)
      #set text(size: 10pt)
      #counter(page).display("1")
    ]
  )
  set text(font: ("Roboto", "BIZ UDPGothic", "Hiragino Sans"), size: 25pt)
  set par(leading: 1em)

  show math.equation: set text(font: "STIX Two Math")
  show raw: set text(font: "Osaka", size: 1.4em)

  show heading: it => {
    it
    v(0.6em)
  }

  [#doc]
}
