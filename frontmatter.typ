#import "/utils.typ"
#import "/packages.typ": notebookinator, codetastic
#import notebookinator: *
#import codetastic: qrcode

#let label(label: "", size: 0.7em) = {
  let data = entry-type-metadata.at(label)
  let color-image = utils.change-icon-color(raw-icon: data.icon, fill: white)

  box(fill: data.color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #image(color-image, height: size)
  ]
}

#create-frontmatter-entry(
  title: "About this Notebook",
)[
  This
]
