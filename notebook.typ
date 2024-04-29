#import "@local/notebookinator:1.0.0": *

#import themes.default: default-theme, components

#show: notebook.with(theme: default-theme)

#create-body-entry(title: "My Entry")[
    Dog water
]
