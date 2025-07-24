# DevLog

![DevLog Home Page](Images/home.png)

> **Track your coding journey, reflect, and blog with ease.**

---

## Table of Contents
- [Features](#features)
- [How to Use DevLog](#how-to-use-devlog)
- [Quick Start](#-quick-start)
  - [Option 1: Using Docker](#option-1-using-docker)
  - [Option 2: Cloning the Repo and Running Locally](#option-2-cloning-the-repo-and-running-locally)
- [Exporting Your Sessions](#exporting-your-sessions)
- [Follow the Journey](#-follow-the-journey)
- [Contributing & Feedback](#contributing--feedback)

---

## Features
- Organize your work by project
- Log sessions with opening and closing notes
- Add context and track blockers as you work
- Export sessions individually or as a single Markdown file for blogging

---

## How to Use DevLog

1. **Create a Project:** Start by creating a project you're working on.
2. **Start a Session:** When you sit down to work, start a session and provide some opening notes.
3. **Log Progress:** Head back to the app every so often to give context on what you're working on at the time, and if anything is stumping you.
4. **Close the Session:** When it's time to pack up, close out the session by leaving some closing notes.
5. **Export Your Work:** Export your sessions individually, or all together as one big `.md` file to kickstart your blog!

---

## 🚀 Quick Start

### Option 1: Using Docker

1. **Pull the Docker image:**

   ```bash
   docker pull trustytea/trackle
   ```

2. **Run the app:**

   ```bash
   docker run -d -p 3000:3000 -e SECRET_KEY_BASE="dummy_key" trustytea/trackle
   ```

3. **Access the app:**

   Open your browser and go to [http://localhost:3000](http://localhost:3000).

4. **To stop the app:**

   You can stop the Docker container by running:

   ```bash
   docker stop <container_id>
   ```

---

### Option 2: Cloning the Repo and Running Locally

1. **Clone the repo:**

   ```bash
   git clone https://github.com/RyanFloresTT/DevLog
   cd trackle
   ```

2. **Install dependencies:**

   Make sure you have Ruby, Rails, and other necessary dependencies installed. Then run:

   ```bash
   bundle install
   ```

3. **Run the app:**

   Start the development environment using:

   ```bash
   ./bin/dev
   ```

4. **Access the app:**

   Open your browser and go to [http://localhost:3000](http://localhost:3000).

---

## Exporting Your Sessions

- Export your sessions individually, or all together as one big `.md` file to kickstart your blog!

---

## 🎥 Follow the Journey
Check out my YouTube to watch how I built the app:

[Watch the Dev Vlog](https://www.youtube.com/watch?v=mzpelMgZUBU)

---

## Contributing & Feedback

Have ideas, feedback, or want to contribute? Feel free to open an issue or pull request!

---

> P.S. You might come across the name "Trackle" mentioned here and there—originally, that was the name I had in mind before I decided to go with "DevLog" instead! 😊
