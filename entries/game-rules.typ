#import "/packages.typ": notebookinator
#import notebookinator: *
#import themes.radial.components: *

#show: create-body-entry.with(
  title: "Game Rules",
  type: "identify",
  date: datetime(year: 2024, month: 4, day: 27),
)

= Field Elements #footnote(
  [Images sourced from: #link("https://content.vexrobotics.com/docs/2024-2025/v5rc-high-stakes/VRC-HighStakesManual-2425-0.1release.pdf", "Game Manual",
  )],
)

In this section we will analyze VRC High Stakes game elements and rules.

#align(center, [
  #image("/assets/field-elements/Full-Field.png", )
  The field for VRC High Stakes is shown above. It has many elements we must analyze. The elements are as follows:
])


#grid(
  columns: (1fr, 1fr),
  
  gutter: 40pt,
  image("/assets/field-elements/rings.png", ),
  par([
    == Rings
    The ring object has an inner diameter of 3 inches, an outer diameter of 7 inches, and a thickness of 2 inches.

    Rings are the main scoring object of High Stakes and are scored by dropping them into mogos, which have stakes for the ring to slide onto. Rings can also be descored from mogos at any time.

    Robots may only posses two rings at a time (*<\SG6>* in the Game Manual), excluding rings if they're possessed in a mogo. This means intakes for rings will be limeted to two rings at a time.
  ], justify: true),

  image("/assets/field-elements/marked-mogo.png", ),
  par([
    == Moblie Goals (Mogos)
    The moble goal objects are hexagonal, with a diameter of 10 inches and a height of 14.5 inches.

    Mogos are other scoring objects in High Stakes. The main way to score mogos is by placing rings onto the stakes on the mogo. Mogos can also be placed into conors to have the points doubled or negated.

    Robots may only posses one mogo at a time (*<\SG6>* in the Game Manual). This means clamps for mogos will be limeted to one mogo at a time.
  ], justify: false),
)



