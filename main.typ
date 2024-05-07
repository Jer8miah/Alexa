#import "./packages.typ": notebookinator
#import notebookinator: *
#import themes.radial: radial-theme, components

#show: notebook.with(theme: radial-theme, cover:
 
align(center + horizon)[

  #text(size: 24pt, font: "Tele-Marines")[
    #v(3em)
    #text(size: 28pt)[
      VRC Engineering Notebook  
    ]
    
    
    //#image("./assets/53E-logo-jank.png", height: 70%)
    
    2024 - 2025
    #line(length: 50%, stroke: (thickness: 2.5pt, cap: "round"))
    High Stake


  ]
], team-name: "99905X")

#create-frontmatter-entry(title: "Table of Contents")[
  #components.toc()
]

#include "/frontmatter.typ"
#include "entries/entries.typ"