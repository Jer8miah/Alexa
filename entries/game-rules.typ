#import "/packages.typ": notebookinator
#import notebookinator: *
#import themes.radial.components: *

#show: create-body-entry.with(
  title: "Game Rules",
  type: "identify",
  date: datetime(year: 2024, month: 5, day: 5),
)

= Field Overview #footnote(
  [Images sourced from: #link("https://content.vexrobotics.com/docs/2024-2025/v5rc-high-stakes/VRC-HighStakesManual-2425-0.1release.pdf", "Game Manual",
  )],
)

The VRC High Stakes field is played in a 12' x 12' field by two allince, one red and one blue, who compete in matches consisting of a fifteen second Autonmous Period followed by a one minute and forty-five second Driver Controlled Period. The object of the game is to attain a higher score than the opposing alliance by scoring Rings on Stakes, placing Moblie Goals, and climbing at the end of the match.

#align(center, [
  #image("/assets/field-elements/Full-Field.png", )
  The field for VRC High Stakes is shown above. It has many elements we must analyze. The elements are as follows:
])


#grid(
  columns: (1fr, 1fr),
  
  gutter: 40pt,
  
  par([
    == Rings
    The ring object has an inner diameter of 3 inches, an outer diameter of 7 inches, and a thickness of 2 inches.

    Rings are the main scoring object of High Stakes and are scored by dropping them into mogos, which have stakes for the ring to slide onto. Rings can also be descored from mogos at any time.

    Robots may only posses two rings at a time (*<\SG6>* in the Game Manual), excluding rings if they're possessed in a mogo. This means intakes for rings will be limeted to two rings at a time.
  ], justify: true),
  image("/assets/field-elements/rings.png", ),

  image("/assets/field-elements/marked-mogo.png", ),
  par([
    == Moblie Goals (Mogos)
    The moble goal objects are hexagonal, with a diameter of 10 inches and a height of 14.5 inches.

    Mogos are other scoring objects in High Stakes. The main way to score mogos is by placing rings onto the stakes on the mogo. Mogos can also be placed into conors to have the points doubled or negated.

    Robots may only posses one mogo at a time (*<\SG6>* in the Game Manual). This means clamps for mogos will be limeted to one mogo at a time.
  ], justify: false),
  
  par(
    [
      == Allince Wall Stakes
      The allince wall stakes from the floor to the top of the wall are 16.72 inches tall, the usable stake is 3.68. Meaning only 2 of the same colored rings can be scored. 
    ]
  ), 
  image("/assets/field-elements/marked-a-goal.png", ),
)



