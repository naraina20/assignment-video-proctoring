# 🎥 Video Proctoring System

This project is a **real-time interview proctoring system** built with React (Vite) for the frontend and Node.js/Express for the backend.  
It tracks user **eye movement, head position, and distractions** using [MediaPipe Face Landmarker](https://developers.google.com/mediapipe).

---

SCREEN SHOTS
Home page
![Home page](image.png)

Interviewee Interface
<img width="1288" height="849" alt="image" src="https://github.com/user-attachments/assets/54b6767d-eeae-4ab2-a121-56c61af736be" />

Live Stream and Recording for interviewer 
<img width="1588" height="967" alt="image" src="https://github.com/user-attachments/assets/7f7f5d6e-5c2e-4030-b88d-6ae44c0fd003" />

Dashboard
<img width="1640" height="903" alt="image" src="https://github.com/user-attachments/assets/9774e0bb-01df-470f-b92d-f0c54c1c8127" />



## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone <your-repo-url>
cd video-proctoring-system
```

### 2. Install Dependencies
Install dependencies for both frontend and backend:

```bash
# Frontend
cd frontend
npm install

# Backend
cd ../backend
npm install
```

---

## ▶️ Running the Application

### Start Backend
From the `backend` directory:
```bash
npm run dev
```
This will start the backend server (Express + Socket.io).

### Start Frontend
From the `frontend` directory:
```bash
npm run dev
```
This will start the Vite React app.

---

## 🌍 Environment Variables

### Frontend
Create a `.env` file inside `frontend` and add:

```env
VITE_BACKEND_URL=http://localhost:4000
```

> Replace `http://localhost:4000` with your backend server URL if running in Docker or production.

---

## 📋 Instructions for Testing Distraction Logging

1. Start the frontend and backend as explained above.
2. Enter your **name** in the modal when prompted.
3. Click **Start Interview** to enable the webcam.
4. **To trigger distraction logs:**  
   - Move your eyes away from the screen for at least **2 seconds**.  
   - The system will log an event and send it to the backend.

---

## 🛠️ Tech Stack
- **Frontend:** React (Vite), Socket.io-client, Mediapipe Vision
- **Backend:** Node.js, Express, Socket.io
- **Video Analysis:** MediaPipe Face Landmarker
- **Build/Deploy:** Docker

---

## 👨‍💻 Author
Developed by **Narayan Dewasi**  
Full-stack Developer | MERN | AI Enthusiast
