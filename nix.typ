#import "./utils.typ": *

#set page(paper: "presentation-16-9")
#set text(size: 20pt, font: "DejaVu Sans")
// #set text(size: 20pt,

#pdfpc.config(
  default-transition: (
    type: "push", duration-seconds: 0.2, angle: rtl, alignment: "vertical", direction: "outward",
  ),
)
// pdfpc ReSetPresentation.pdf --duration=35 --last-minutes=25
//
// in /home/dashie/.config/pdfpc/pdfpcrc
//
// option current-size 50
// option current-height 50
// option next-height 40
// option transition-fps 90

#polylux-slide[
  #align(horizon + center)[
    = Nix
    #image("./figures/nix.png", width: 150pt)
    Fabio Lenherr

    07.07.2024
  ]
]

#set page(background: regular_page_design(), footer: default_footer())

#show heading.where(level: 3).or(heading.where(level: 2)): content => [
  #content
  #v(-20pt)
  #line(
    start: (0%, 0%), end: (97%, 0%), stroke: 2pt + gradient.linear(black, white),
  )
]

#polylux-slide[
== Table of Contents
#v(15pt)

- Nix the language
- NixOS
- Home-manager
- Flakes
- Specializations
#pdfpc.speaker-note(```md
- context -> what is nix ? - why do we even use it? just another linux distro?
    ```)
]

#include "./topics/nix-lang.typ"
#include "./topics/nixos.typ"
#include "./topics/homemanager.typ"
#include "./topics/flakes.typ"
#include "./topics/specializations.typ"
