#import "src/resume.typ": *;

#show: resume.with(
  name: "Redger Xu",
  email: "redgerxu@berkeley.edu",
  phone: "(408) 769-0763",
  linkedin: "linkedin.com/in/redgerxu",
  linkedin-url: "https://www.linkedin.com/in/redgerxu/",
  github: "github.com/regarager",
  github-url: "https://github.com/regarager",
  website: "redgerxu.dev",
  website-url: "https://redgerxu.dev",
)

#section("Education")

#edu(
  institution: "University of California, Berkeley",
  degree: "B.S. Electrical Engineering & Computer Sciences",
  gpa: "4.0",
  // location: "Berkeley, CA",
  date: start-end(start: "August 2026", end: "Expected May 2030"),
  coursework: (
    "Data Structures",
    "Linear Algebra & Differential Equations",
  ),
  coursework-label: "Current Coursework",
)

#edu(
  institution: "Stratford Preparatory Blackford",
  degree: "High School Diploma",
  gpa: "4.87",
  // location: "San Jose, CA",
  date: start-end(start: "August 2022", end: "June 2026"),
)

#section("Projects")

#project(
  title: "ClashAI",
  subtitle: "Reinforcement Learning + Computer Vision",
  github: "https://github.com/regarager/clash-ai",
  date: start-end(start: "Fall 2025", end: "Spring 2026"),
)[

  - Built a mobile-game (Clash Royale) agent that captures Android emulator frames via ADB and converts them into game state information using OpenCV and YOLOv11; achieved 76% win rate
  - Designed a hybrid PPO actor-critic policy with multi-head attention over learned card embeddings and action masking on invalid actions, outputting in a hybrid (discrete + continuous) action space
  - Engineered a jitter-robust hand-card recognizer using Sobel/Otsu preprocessing and 4096-bit dHash matching with Hamming-distance tolerance
]

#project(
  title: "MaLO",
  subtitle: "Contributor · LLMs in Cybersecurity",
  date: "Summer 2025",
)[
  - Integrated the OpenRouter API to enable benchmarking across multiple LLM models; controlled system prompt, temperature, and other key hyperparameters across models
  - Enforced reproducibility across different models using Docker and standardized challenge files
  - Created pipeline to run all tests automatically, removing manual per-run intervention and speeding up tests
]

#project(
  title: "Analysis of California Traffic Collisions",
  subtitle: "Data Science + Forecasting",
  date: "Summer 2024",
)[
  - Engineered multi-class classification and time-series forecasting pipelines on 5M+ California Highway Patrol collision records to identify environmental, temporal, and vehicular risk factors
  - Designed a custom "lenient accuracy" metric to handle near-correct classifications; benchmarked Logistic Regression, SVM, and Random Forest
  - Built a time-series forecasting model using skforecast with lag optimization; formulated a causal hypothesis on Daylight Saving Time (DST) shifts, classifying post-DST periods vs. normal days with 71.4% accuracy
]

#project(
  title: "IntBee",
  subtitle: "Full-Stack",
  github: "https://github.com/regarager/intbee",
  date: start-end(start: "Fall 2025", end: "Spring 2026"),
)[
  - Built a full-stack integration (calculus) contest platform with TypeScript + HTMX, WebSocket-based live matches, JWT authentication, and MongoDB
  - Developed competition tooling: question bank, strategy wiki, and live scoreboard; used it to host an integration contest in high school
]

#section("Experience")

#work(
  title: "Undergraduate Researcher",
  company: "ASTRA",
  dates: "Fall 2026 – Present",
  location: "UC Berkeley",
)
- Investigated subliminal learning in machine learning models, analyzing how fine-tuned traits can be transferred through distillation on unrelated outputs
- Demonstrated transfer of the MNIST digit classifier to a student model training on only random noise; recovered 94.3% of the teacher's accuracy after training

#experience(
  title: "Cybersecurity Club, Stratford Preparatory",
  subtitle: "Captain",
  date: start-end(start: "Fall 2024", end: "Spring 2026"),
)[
  - Directed CTF team strategy, coordinated problem-solving during competitions, organized team practice sessions
  - National Cyber League: Placed 2nd individually (1,000+ HS participants) & top 2% team (Fall 2025); top 3% individual (Spring 2025 & Fall 2024)
  - PicoCTF 2025: Placed in the top 3% of all teams
  // - Achieved the following placements:
  //   - National Cyber League Fall 2025: 2nd place HS individual round, top 0.5% individual round, top 2% team round
  //   - National Cyber League Spring 2025 top 4% individual round, top 2% team round
  //   - National Cyber League Fall 2024: top 3% individual round, top 2% team round
  //   - PicoCTF 2025: top 3% team round
]

#experience(
  title: "Hackathon Club",
  subtitle: "President",
  date: start-end(start: "Fall 2023", end: "Spring 2026"),
)[
  - Organized LionHacks 2024 & 2025, recruited judges, and grew event to 140+ participants; coordinated cross-school logistics and finances for BISV Hacks 2025 & 2026
  - Directed weekly technical sessions and mentored club members on full-stack web development
]

#section("Skills")

- *Languages:* Python, Java, C++, JavaScript, TypeScript, Bash, Rust
- *Tools:* Docker, Linux, Git, GitHub, Firebase, MongoDB
- *Cybersecurity:* Ghidra, pwntools, GDB, Metasploit, Wireshark, Burp Suite, Nmap
- *Data Science:* PyTorch, scikit-learn, Pandas, NumPy, OpenCV

