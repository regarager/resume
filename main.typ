#set document(title: "Redger Xu — Resume", author: "Redger Xu")
#set page(paper: "us-letter", margin: (top: 0.5in, bottom: 0.5in, x: 0.6in))
#set text(font: "New Computer Modern", size: 10pt, lang: "en")
#set par(leading: 0.5em, spacing: 0.7em)
#set list(indent: 0.75em, body-indent: 0.45em, tight: true)
#set block(spacing: 0.65em)

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

#let entry(title, date) = grid(
  columns: (1fr, auto),
  column-gutter: 0.75em,
  title, date,
)

#show link: set text(fill: rgb("#1d4ed8"))
#let tag(body) = text(size: 8.5pt, fill: luma(110), style: "italic")[ #body]

#align(center)[
  #text(size: 19pt, weight: "bold")[Redger Xu]

  #link("mailto:redgerxu@berkeley.edu")[redgerxu\@berkeley.edu] | #link("https://github.com/regarager")[github.com/regarager] | (408) 769-0763
]

#section("Education")

#entry[*University of California, Berkeley* | B.S. Electrical Engineering & Computer Sciences][Expected May 2030]
- Current Coursework: Data Structures, Linear Algebra & Differential Equations

#entry[*Stratford Preparatory Blackford* | High School Diploma][June 2026]
- GPA: 4.87
- Relevant Coursework: AP Computer Science A, AP Calculus BC, AP Statistics, Cybersecurity, Full-Stack Development

#section("Projects")

#entry[*ClashAI* #link("https://github.com/regarager/clash-ai")[(code)] #tag[(Reinforcement Learning + Computer Vision)]][Fall 2025 – Spring 2026]
- Built an autonomous reinforcement learning agent to play the mobile game Clash Royale using PPO (actor-critic with multi-head attention) and action masking for legal move selection
- Implemented unit detection with YOLOv11 and dHash-based card recognition using Sobel edge detection, Otsu thresholding, and jitter-robust matching
- Reduced screen-capture latency from ≈200 ms to ≈30 ms by integrating minicap over ADB, enabling real-time perception–decision loops

#entry[*IntBee* #link("https://github.com/regarager/intbee")[(code)] #tag[(Full-Stack + Web Security)]][Fall 2025 – Spring 2026]
- Built a full-stack TypeScript web application for real-time 1v1 integration contests
- Implemented real-time gameplay over WebSockets: matchmaking queue, timed rounds, and live bidirectional game-state sync between players
- Designed JWT authentication with Argon2 password hashing and role-based access control
- Developed competition tooling: paginated problem bank with LaTeX rendering, live leaderboard with configurable score curves and JSON export, and tag-based markdown wiki

#entry[*MaLO* | Contributor #tag[(Multi-Agent Cybersecurity LLM Framework)]][Summer 2025]
- Integrated the OpenRouter API to enable benchmarking across multiple LLM models
- Implemented style-guide enforcement and automated checks on publishing changes, improving codebase reliability
- Accelerated benchmarking by automating test environments with Docker images

#entry[*Analysis of California Traffic Collisions* #tag[(Data Science + Predictive Modeling)]][Summer 2024]
- Conducted end-to-end analysis of 5M+ collision records: data cleaning, EDA, feature engineering, and model deployment
- Trained and tuned random forest and logistic regression models to identify key factors of collision severity
- Developed data-driven policy recommendations with supporting visualizations for roadway safety improvements

#section("Experience")

#entry[*Cybersecurity Club* | Co-Captain][Fall 2024 – Spring 2026]
- Led team strategy across forensics, cryptography, and web exploitation at four national CTF competitions; mentored members toward category specialization

#entry[*Hackathon Club* | President][Fall 2023 – Spring 2026]
- Organized *LionHacks 2024 & 2025*, recruited judges, and grew event to *140+ participants*; coordinated cross-school logistics and finances for BISV Hacks 2025 & 2026
- Presented weekly technical sessions on topics such as JavaScript, React, and Firebase; mentored club members on full-stack web development

#section("Competitions & Awards")

#entry[*National Cyber League*][Fall 2025]
- Placed 2nd out of 1,000+ high school participants in a nationwide cybersecurity capture-the-flag (CTF) competition
- Led team to a 6th-place finish among all high school teams

#section("Skills")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  row-gutter: 0.5em,
  [*Software Development:* Python, Java, C++, HTML/CSS/JavaScript, TypeScript, Bash, Rust],
  [*Data Science:* PyTorch, Scikit-learn, Pandas, NumPy, OpenCV, Ultralytics YOLOv11, Jupyter Notebooks],

  [*Cybersecurity:* Ghidra, GDB, Wireshark, Pwntools],
  [*Infrastructure:* Firebase, Docker, MongoDB, Linux],
)
