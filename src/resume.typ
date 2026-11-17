// A small, reusable resume template.
//
// Usage:
//   #import "src/resume.typ": resume, section, entry, edu, project, experience, work, start-end, tag
//
//   #show: resume.with(
//     name: "Jane Doe",
//     email: "jane@example.com",
//     phone: "(555) 555-5555",
//     linkedin: "linkedin.com/in/janedoe",
//     github: "github.com/janedoe",
//   )
//
//   #section("Education")
//   #edu(
//     institution: "University Name",
//     degree: "Bachelor of Science, ...",
//     gpa: "4.0",
//     date: start-end(start: "August 2026", end: "Expected May 2030"),
//     coursework: ("Course A", "Course B"),
//     coursework-label: "Relevant Coursework",
//   )
//
//   #section("Projects")
//   #project(
//     title: "Project Name",
//     subtitle: "Category",
//     github: "github.com/user/project",
//     demo: "project.example.com",
//     date: start-end(start: "Fall 2025"),
//   )[
//     - Bullet point
//   ]
//
//   #section("Experience")
//   #experience(
//     title: "Organization",
//     subtitle: "Role",
//     date: start-end(start: "Fall 2024", end: "Spring 2026"),
//   )[
//     - Bullet point
//   ]
//
// `section`, `entry`, `edu`, `project`, `experience`, `work`, `start-end`, and
// `tag` are meant to be used inside the body of `resume`, so they pick up its
// font, spacing, and accent color.

// Add https:// when the caller passes a bare domain.
#let _add-scheme(url) = {
  if url.starts-with("http://") or url.starts-with("https://") {
    url
  } else {
    "https://" + url
  }
}

// Plain-text approximation sign (~) for numbers in prose.
#let approx-symbol = "~"

// A full-width section heading with a rule underneath.
#let section(title) = {
  v(0.5em)
  grid(
    columns: (auto, 1fr),
    column-gutter: 0.5em,
    align: (left, bottom),
    text(size: 11pt, weight: "bold")[#upper(title)],
    line(length: 100%, stroke: 0.6pt + black),
  )
  v(0.2em)
}

// Format a date range as "Start — End". `start` is required; `end` defaults
// to "Present".
#let start-end(start: none, end: "Present") = {
  assert(
    start != none and start != "",
    message: "start-end: start is required",
  )
  let end = if end == none or end == "" { "Present" } else { end }
  [#start #sym.dash.em #end]
}

// A title/date row. Use it for jobs, projects, schools, awards, etc.
// The date is optional: `#entry[Title][Date]` or just `#entry[Title]`.
#let entry(title, date: none, ..rest) = {
  let date-content = if date != none {
    date
  } else if rest.pos().len() > 0 {
    rest.pos().at(0)
  } else {
    []
  }

  grid(
    columns: (1fr, auto),
    column-gutter: 0.75em,
    title,
    date-content,
  )
}

// An education entry. `coursework` is a list of course names, rendered as a
// single bullet prefixed by `coursework-label`.
#let edu(
  institution: "",
  degree: none,
  gpa: none,
  // location: none, // Commented out until locations are needed again.
  date: none,
  coursework: (),
  coursework-label: "Coursework",
) = {
  let coursework-items = if type(coursework) == array {
    coursework
  } else {
    (coursework,)
  }

  [
    *#institution* #h(1fr) #date \
    #if degree != none { emph(degree) } #h(1fr) #if gpa != none { emph([GPA: #gpa]) }
    // if location != none { emph(location) }
  ]

  if coursework-items.len() > 0 {
    let label = if coursework-label != none and coursework-label != "" {
      [#coursework-label: ]
    } else {
      []
    }
    list([#label#coursework-items.join(", ")])
  }
}

// A small, muted annotation for technologies or categories.
#let tag(body) = text(size: 8.5pt, fill: luma(110), style: "italic")[ #body]

// Renders a project link label such as "GitHub" or "Demo".
#let _project-link(url, label) = link(_add-scheme(url))[#label]

// A project entry formatted as "Title | Subtitle | Demo | GitHub", with a
// right-aligned date and bullet points in the body. The subtitle inherits the
// title's color and is italicized.
#let project(
  title: "",
  subtitle: none,
  github: none,
  demo: none,
  date: none,
  body,
) = {
  let parts = ()
  parts.push([*#title*])
  if subtitle != none and subtitle != "" {
    parts.push(emph(subtitle))
  }
  if demo != none and demo != "" {
    parts.push(_project-link(demo, "Demo"))
  }
  if github != none and github != "" {
    parts.push(_project-link(github, "GitHub"))
  }

  entry(parts.join(" | "), date: date)
  body
}

// Shared heading for experience and work entries.
#let _experience-heading(title, subtitle, location, date) = {
  let parts = ()
  parts.push([*#title*])
  if subtitle != none and subtitle != "" {
    parts.push(emph(subtitle))
  }
  if location != none and location != "" {
    parts.push(emph(location))
  }

  entry(parts.join(" | "), date: date)
}

// An experience entry formatted as "Title | Subtitle | Location", with a
// right-aligned date and bullet points in the body. The subtitle and location
// inherit the title's color and are italicized.
#let experience(
  title: "",
  subtitle: none,
  location: none,
  date: none,
  body,
) = {
  _experience-heading(title, subtitle, location, date)
  body
}

// A bodyless work entry using company/dates/location field names. Bullet
// points can follow the call directly, like the basic-resume package.
#let work(
  title: "",
  company: "",
  dates: none,
  location: none,
) = {
  _experience-heading(title, company, location, dates)
}

#let resume(
  name: "",
  email: "",
  phone: "",
  location: "",
  linkedin: "",
  github: "",
  website: "",
  linkedin-url: "",
  github-url: "",
  website-url: "",
  extra-contacts: (),
  accent-color: rgb("#1d4ed8"),
  font: "Libertinus Serif",
  font-size: 10pt,
  name-size: 19pt,
  paper: "us-letter",
  margin: (top: 0.5in, bottom: 0.5in, x: 0.6in),
  lang: "en",
  body,
) = {
  set document(
    title: if name == "" { "Resume" } else { name + " — Resume" },
    author: name,
  )
  set page(paper: paper, margin: margin)
  set text(font: font, size: font-size, lang: lang)
  set par(leading: 0.5em, spacing: 0.7em)
  set list(indent: 0.75em, body-indent: 0.45em, tight: true)
  set block(spacing: 0.65em)
  show link: set text(fill: accent-color)

  // Build the contact line, skipping any field the caller left empty.
  let contact-items = ()
  if email != "" {
    contact-items.push(link("mailto:" + email)[#email])
  }
  if phone != "" {
    contact-items.push(phone)
  }
  if location != "" {
    contact-items.push(location)
  }
  if linkedin != "" {
    contact-items.push(link(
      if linkedin-url != "" { linkedin-url } else { _add-scheme(linkedin) },
    )[#linkedin])
  }
  if github != "" {
    contact-items.push(link(
      if github-url != "" { github-url } else { _add-scheme(github) },
    )[#github])
  }
  if website != "" {
    contact-items.push(link(
      if website-url != "" { website-url } else { _add-scheme(website) },
    )[#website])
  }
  let extras = if type(extra-contacts) == array {
    extra-contacts
  } else {
    (extra-contacts,)
  }
  for item in extras {
    contact-items.push(item)
  }

  align(center)[
    #text(size: name-size, weight: "bold")[#name]

    #contact-items.join("  |  ")
  ]

  body
}
