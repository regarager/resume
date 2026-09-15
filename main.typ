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

  #link("mailto:redgerxu@berkeley.edu")[redgerxu\@berkeley.edu] | #link("https://github.com/regarager")[github.com/regarager] | #link("https://redgerxu.dev")[redgerxu.dev]
]

#section("Education")

#entry[*University of California, Berkeley* | B.S. Electrical Engineering & Computer Sciences][Class of 2030]
- Current Coursework: Data Structures, Linear Algebra & Differential Equations

#entry[*Stratford Preparatory Blackford* | High School Diploma (GPA: 4.87)][June 2026]
- Relevant Coursework: AP Computer Science A, AP Calculus BC, AP Statistics, Cybersecurity, Full-Stack Development, AI: Models and Applications, Data Structures and Algorithms

#section("Projects")

#entry[*ClashAI* #link("https://github.com/regarager/clash-ai")[(code)] #tag[(Reinforcement Learning + Computer Vision)]][Fall 2025 – Spring 2026]
- Investigated real-time perception–action bottlenecks in game-playing RL agents; benchmarked ADB versus minicap screen-capture frameworks, reducing end-to-end latency from $approx 200$ ms to $approx 30$ ms while preserving YOLOv11 detection integrity
- Implemented PPO with multi-head attention and action masking for legal move selection; engineered jitter-robust card recognition via dHash matching with Sobel edge detection and Otsu thresholding
- Conducted ablation studies on latency-vs-accuracy trade-offs, identifying the capture pipeline as the primary bottleneck for real-time decision loops

#entry[*MaLO* | Contributor #tag[(LLMs in Cybersecurity)]][Summer 2025]
- Integrated the OpenRouter API to enable benchmarking across multiple LLM models; controlled system prompt, temperature, and other key hyperparameters across models
- Enforced reproducibility across different models using Docker and standardized challenge files
- Created pipeline to run all tests automatically, removing manual per-run intervention and speeding up tests

#entry[*Analysis of California Traffic Collisions* #tag[(Data Science + Forecasting)]][Summer 2024]
- Engineered multi-class classification and time-series forecasting pipelines on 5M+ California Highway Patrol collision records to identify environmental, temporal, and vehicular risk factors
- Designed a custom "lenient accuracy" metric to handle near-correct classifications; benchmarked Logistic Regression, SVM, and Random Forest
- Built a time-series forecasting model using skforecast with lag optimization; formulated a causal hypothesis on Daylight Saving Time (DST) shifts, classifying post-DST periods vs. normal days with 71.4% accuracy

#entry[*IntBee* #link("https://github.com/regarager/intbee")[(code)] #tag[(Full-Stack)]][Fall 2025 – Spring 2026]
- Built a full-stack TypeScript integration (calculus) contest platform with WebSocket matchmaking, JWT/Argon2 authentication, and role-based access control
- Developed competition tooling: LaTeX-rendered problem banks, configurable leaderboards, and a tag-based markdown wiki

#section("Competitions & Awards")

#entry[*National Cyber League*][Fall 2025]
- Placed 2nd individually out of 1,000+ high school participants in a nationwide cybersecurity capture-the-flag (CTF) competition
- Placed 6th in the team round out of all high school teams

#section("Experience")

#entry[*Cybersecurity Club* | Co-Captain][Fall 2024 – Spring 2026]
- Led team strategy across forensics, cryptography, and web exploitation at four national CTF competitions; mentored members toward category specialization

#entry[*Hackathon Club* | President][Fall 2023 – Spring 2026]
- Organized *LionHacks 2024 & 2025*, recruited judges, and grew event to *140+ participants*; coordinated cross-school logistics and finances for BISV Hacks 2025 & 2026
- Presented weekly technical sessions on topics such as JavaScript, React, and Firebase; mentored club members on full-stack web development

#section("Skills")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  row-gutter: 0.5em,
  [*Cybersecurity:* Ghidra, Pwntools, GDB, Metasploit, Wireshark, Burp Suite, Nmap],
  [*Infrastructure:*  Docker, Linux, Git, GitHub, Firebase, MongoDB],
  [*Software Development:* Python, Java, C++, HTML/CSS/JavaScript, TypeScript, Bash, Rust],
  [*Data Science:* PyTorch, Scikit-learn, Pandas, NumPy, OpenCV, Ultralytics YOLOv11, Jupyter Notebooks],
)
