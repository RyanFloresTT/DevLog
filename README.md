## 🚀 Quick Start

### Option 1: Using Docker

1. **Pull the Docker image:**

   ```bash
   docker pull trustytea/trackle
   ```

2. **Run the app:**

   ```bash
   docker run -p 3000:3000 -e SECRET_KEY_BASE="dummy_key" trustytea/trackle
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