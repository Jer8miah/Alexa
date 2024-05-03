#import "/utils.typ"
#import "/packages.typ": notebookinator, codetastic
#import notebookinator: *
#import themes.radial.components: *
#import codetastic: qrcode

#let label(label: "", size: 0.7em) = {
  let data = entry-type-metadata.at(label)
  let colored-image = utils.change-icon-color(raw-icon: data.icon, fill: white)

  box(fill: data.color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #image.decode(colored-image, height: size)
  ]
}

#create-frontmatter-entry(
  title: "About this Notebook",
)[
  This notebook was written with a programming language called Typst. We write
  instructions about formatting in Typst, and they are rendered into a pdf.
  Here are some examples of what that looks like:

  ```typ
  Just some ordinary text // Turns into text

  #grid( // Creates a grid layout
    columns: (1fr, 1fr),
    gutter: 20pt,
    pro-con(
      pros: [ // Turns into a table of pros and cons (appears on the right side)
        - good
        - better ],
      cons: [
        - bad
        - worse
      ],
    ),
    [
      Some content on the left side *Bold content on the left side*
    ],
  )
  ```

This would would render into:

Just some ordinary text // Turns into text

#grid( // Creates a grid layout
  columns: (1fr, 1fr),
  gutter: 20pt,
  pro-con(
    pros: [ // Turns into a table of pros and cons (appears on the right side)
      - good
      - better ],
    cons: [
      - bad
      - worse
    ],
  ),
  [
    Some content on the left side

    *Bold content on the left side*
  ],
)
  #colbreak()

  #grid(
    columns: 2,
    rows: 3,
    //gutter: 20pt,
    [
      = _Source Code_
      The source code for this notebook is available on GitHub at the following URL: #link("https://github.com/Jer8miah/HighStakes-Notebook").
      Alternatively, you can use the QR code to the left.
    ], figure(
      qrcode("https://github.com/Jer8miah/HighStakes-Notebook", size: 0.2em),
      caption: "Scan to view the source code on GitHub"), 
    [
    = _The Notebookinator_
    Another benefit of using Typst is that we can use libraries like _The Notebookinator_ which
    provides tools and examples for creating visually appealing notebooks with
    typst.
  ],
  figure(
    qrcode("https://github.com/BattleCh1cken/notebookinator", size: 0.2em),
    caption: [_The Notebookinator_ Github repository],
  ),
  [
    = _Insperation_
    A lot of this notebook’s formatting was inspired by Felix Hass of
      53E’s notebook, which served as a great example of how to use
      The Notebookinator. He was also very willing to answer any
      questions we had about the notebook, and we are very grateful
      for his help.
  ], figure(
    qrcode("https://github.com/Area-53-Robotics/53E-Notebook", size: 0.2em),
    caption: [_53E’s Notebook_ Github repository]
  )
  
    
  )

  #colbreak()



  == How to Read Entries

Entries all have a type, which is displayed in the top left corner, as well as
in the table of contents. Most types correspond with a step in the engineering
design process, but some do not.

Here are the existing types:

#let spacing = 3pt

#stack(
  spacing: 10pt,
  [#box(baseline: 30%, label(label: "identify", size: 1.7em)) #h(10pt) *Identify the problem*],
  [#box(baseline: 30%, label(label: "brainstorm", size: 1.7em)) #h(10pt) *Brainstorm possible solutions*],
  [#box(baseline: 30%, label(label: "decide", size: 1.7em)) #h(10pt) *Decide on the optimal solution*],
  [#box(baseline: 30%, label(label: "build", size: 1.7em)) #h(10pt) *Build the solution*],
  [#box(baseline: 30%, label(label: "program", size: 1.7em)) #h(10pt) *Program the solution*],
  [#box(baseline: 30%, label(label: "test", size: 1.7em)) #h(10pt) *Test the solution*],
  [#box(baseline: 30%, label(label: "management", size: 1.7em)) #h(10pt) *Team management*],
  [#box(baseline: 30%, label(label: "notebook", size: 1.7em)) #h(10pt) *Notebook Metadata*],
  
  
)
]







