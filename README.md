# Kairox AI Agent 🚀

Kairox AI Agent is a career guidance assistant built using Google ADK and Gemini.  
It helps users explore career paths and provides structured, month-wise learning roadmaps.

---

## ✨ Features

- Career path suggestions  
- Skill recommendations  
- Month-wise learning roadmaps  
- Beginner-friendly explanations  

---

## 🛠 Tech Stack

- Google ADK  
- Gemini 2.5 Flash  
- FastAPI  
- Cloud Run  

---

## ▶️ Run Locally

```bash
python -m google.adk.cli web agents
```

---

## 🧪 Test with curl

### Step 1: Create session

```bash
curl -X POST http://localhost:8000/apps/kairox_agent/users/user1/sessions
```

---

### Step 2: Run agent

```bash
curl -s -X POST http://localhost:8000/run \
-H "Content-Type: application/json" \
-d '{
  "appName": "kairox_agent",
  "userId": "user1",
  "sessionId": "SESSION_ID",
  "new_message": {
    "role": "user",
    "parts": [
      { "text": "Give me a 3 month roadmap for cybersecurity" }
    ]
  }
}' | jq -r '.[0].content.parts[0].text'
```

---

## 📌 Note

- Replace `SESSION_ID` with the ID from Step 1  
- Output is cleaned using `jq`  

---

## 👨‍💻 Author

**Nilesh Thipe**
