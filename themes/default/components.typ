#import "/packages.typ": tablex
#import tablex: tablex, cellx
#import "/utils.typ"

/// Print out the table of contents
///
/// Example Usage:
/// ```typ
/// #create-frontmatter-entry(title: "Table of Contents")[
///   #components.toc()
/// ]
/// ```
#let toc() = utils.print-toc((_, body, appendix) => {
  heading[Contents]
  stack(spacing: 0.5em, ..for entry in body {
    ([
      #entry.title
      #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
      #entry.page-number
    ],)
  })

  heading[Appendix]
  stack(..for entry in appendix {
    ([
      #entry.title
      #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
      #entry.page-number
    ],)
  })
})

/// Prints out the glossary.
///
/// Example Usage:
///
/// ```typ
/// #create-appendix-entry(title: "Glossary")[
///   #components.glossary()
/// ]
/// ```
#let glossary() = utils.print-glossary(glossary => {
  stack(spacing: 0.5em, ..for entry in glossary {
    ([
      = #entry.word

      #entry.definition
    ],)
  })
})

/// A decision matrix table.
///
/// *Example Usage*
/// ```typ
/// #components.decision-matrix(
///   properties: (
///     (name: "Flavor", weight: 2),
///     (name: "Crunchiness"), // The weight defaults to 1
///   ),
///   ("Sweet Potato", 1, 2),
///   ("Baked Potato", 2, 1)
/// )
///
/// ```
/// - properties (array): A list of the properties that each choice will be rated by and the weight of each property
/// - ..choices (array): An array containing the name of the choices as its first member,
/// and values for each of the properties at its following indices
/// -> content
#let decision-matrix(properties: (), ..choices) = {
  let data = utils.calc-decision-matrix(properties: properties, ..choices)
  tablex(
    columns: for _ in range(properties.len() + 2) {
      (1fr,)
    },
    [], // Blank box
    ..for property in properties {
      ([ *#property.name* ],)
    },
    [*Total*],
    ..for choice in data {
      // Override the fill if the choice has the highest score
      let cell = if choice.values.total.highest { cellx.with(fill: green) } else { cellx }
      (cell[*#choice.name*], ..for value in choice.values {
        (cell[#value.at(1).value],)
      })
    },
  )
}

/// A table displaying pros and cons.
///
/// *Example Usage*
/// ```typ
/// #components.pro-con(
///  pros: [
///    #list(
///      "Sweet potato",
///      "Baked potato"
///    )
///  ],
///  cons: [
///    #list(
///      "Fries",
///      "Wedges"
///    )
///  ]
/// )
/// ```
/// - pros (content): The positive aspects
/// - cons (content): The negative aspects
/// -> content
#let pro-con(pros: [], cons: []) = {
  tablex(
    columns: (1fr, 1fr),
    cellx(fill: green)[*Pros*],
    cellx(fill: red)[*Cons*],
    [#pros],
    [#cons],
  )
}
