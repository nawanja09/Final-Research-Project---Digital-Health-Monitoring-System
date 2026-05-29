# Smart IoT-Based Behavioral Risk Monitoring with Integrated Digital Health Card

## 📌 Overview

The **Smart IoT-Based Behavioral Risk Monitoring System** is an AI-powered healthcare platform designed to detect and assess behavioral and psychological risk patterns associated with digital addiction in adolescents through real-time physiological monitoring.

The system integrates **IoT wearable biosensors, machine learning, real-time cloud analytics, and automated Digital Health Card generation**, enabling clinicians to make informed decisions in pediatric mental health assessment.

This project is part of the **SafeKid Scan multimodal healthcare research platform**.

---

## 🚀 Key Features

- Real-time physiological monitoring using IoT sensors  
- AI-powered behavioral risk prediction  
- Random Forest machine learning classification  
- ECG, HRV, SpO₂, temperature, and motion analysis  
- Facial expression recognition using OpenCV  
- Speech emotion analysis using Librosa  
- Automated Digital Health Card generation  
- QR-authenticated PDF health reports  
- Blockchain-based hash verification  
- SMS appointment reminders and emergency alerts  
- Role-based patient and doctor management system  
- Cloud-integrated real-time monitoring dashboard  

---

### 🎥 Demo

<p align="center">
  <img src="https://raw.githubusercontent.com/nawanja09/Final-Research-Project---Digital-Health-Monitoring-System/main/asset/safekid-demo.gif" width="900"/>
</p>

*Real-time monitoring dashboard with ECG visualization and behavioral risk alerts*

---

## 🏗️ System Architecture

### 1. IoT Sensor Layer
Collects physiological and behavioral signals using wearable and environmental sensors.

### 2. Data Acquisition Layer
ESP32 microcontroller transmits sensor data to backend APIs via REST communication.

### 3. Cloud Processing Layer
Processes incoming sensor streams, extracts features, and performs AI-based analysis.

### 4. AI Classification Layer
Uses a trained **Random Forest Classifier** to classify user states:
- Normal state  
- Stress / addiction-associated state  

### 5. Digital Health Card Layer
Generates secure, authenticated health reports with QR verification.

### 6. Notification Layer
Sends SMS alerts and reminders to guardians and clinicians.

---

## 🧠 Machine Learning Model

### Algorithm
- Random Forest Classifier

### Performance

| Metric | Score |
|--------|------|
| Accuracy (Training) | 96.88% |
| Accuracy (Validation) | 96.97% |
| Precision | 96.9% |
| Recall | 97.0% |
| F1 Score | 96.9% |
| AUC-ROC | 0.987 |

---

## 📊 Extracted Features

### ECG / HRV
- Mean RR Interval  
- SDNN  
- RMSSD  
- pNN50  
- Heart Rate  

### PPG
- SpO₂ Levels  
- HRV Variability  
- Amplitude Variability  

### Motion
- RMS Acceleration  
- Spectral Entropy  
- Movement Intensity  

### Facial Analysis
- Eye Openness  
- Brow Movement  
- Lip Compression  
- Facial Action Units  

### Audio Features
- MFCCs  
- Pitch Analysis  
- Speech Energy  
- Zero Crossing Rate  

---

## 🏥 Digital Health Card

The system generates a secure **Digital Health Card** containing:

- Patient details  
- Clinical session summary  
- Behavioral risk classification  
- Risk probability score  
- Medication records  
- Appointment schedules  
- Clinician notes  
- QR authentication  
- Blockchain verification hash  

All reports are exported as **secure PDF documents**.

---

## 📡 Real-Time Monitoring Dashboard

- Live ECG visualization  
- Real-time sensor monitoring  
- Continuous risk scoring  
- Patient management system  
- Appointment scheduling  
- Digital health card generation  
- SMS alert configuration  
- Session history tracking  

---

## 📲 SMS Alert System

Integrated with **Twilio API**, supporting:

- Appointment reminders  
- Emergency alerts  
- Guardian notifications  
- Clinician alerts  
- Multi-language messaging  

---

## 🔐 Security & Privacy

- Role-based access control  
- JWT authentication  
- TLS 1.3 encrypted communication  
- AES-256 encrypted data storage  
- Blockchain-based verification  
- Consent management system  
- Secure cloud storage (AWS / GCP)  

---

## 🛠️ Tech Stack

### Hardware
- ESP32 DevKit  
- AD8232 ECG Sensor  
- MAX30102 (Heart Rate & SpO₂)  
- DS18B20 Temperature Sensor  
- MLX90614 IR Sensor  
- MPU6050 Accelerometer/Gyroscope  
- Raspberry Pi Camera  
- INMP441 Microphone  
- MQ-7 Gas Sensor  

### Backend
- FastAPI (Python)  
- PostgreSQL  
- Node-RED  
- ThingsBoard  

### Frontend
- React.js  
- React Native  

### Machine Learning
- Scikit-learn  
- Random Forest  
- NumPy / Pandas  

### AI Processing
- OpenCV  
- Librosa  

### Cloud
- AWS S3  
- Google Cloud Storage  

### Security
- JWT  
- TLS 1.3  
- AES-256  

### Reporting
- ReportLab  
- QR Code Generator  

### Notifications
- Twilio SMS API  

---

## 🎯 Project Objectives

- Detect behavioral risks linked to digital addiction  
- Assist clinicians with AI-based decision support  
- Enable real-time patient monitoring  
- Reduce manual clinical documentation  
- Provide secure digital health reporting  
- Improve continuity of care via automated alerts  

---

## 🔮 Future Improvements

- Integration with national EHR systems  
- Offline AI inference support  
- Additional physiological biomarkers  
- Wearable device expansion  
- Telemedicine integration  
- Large-scale clinical validation  

---

## ⚙️ Installation Guide

### 1. Clone Repository
```bash
git clone https://github.com/nawanja09/Final-Research-Project---Digital-Health-Monitoring-System.git
````

### 2. Backend Setup

```bash
cd backend
pip install -r requirements.txt
py -3.11 mindguard_server.py 
```

### 3. Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

### 4. Database Setup

* Create a PostgreSQL database
* Configure environment variables

---

## 🔐 Admin Login (Demo Credentials)

For testing purposes, you can use the following admin credentials:

- **Username:** admin@mindguard.lk 
- **Password:** admin@123  

⚠️ Note: These are demo credentials for academic/testing purposes only.  
In production, credentials are securely stored and hashed in the database.

---

## 🔐 Environment Variables

Create a `.env` file:

```env
DATABASE_URL=
JWT_SECRET=
TWILIO_ACCOUNT_SID=
TWILIO_AUTH_TOKEN=
AWS_ACCESS_KEY=
AWS_SECRET_KEY=
```

---

## 📚 Research Contribution

This project contributes to:

* AI-assisted healthcare systems
* Behavioral risk monitoring
* IoT-based mental health detection
* Digital addiction analysis
* Smart clinical documentation systems

---

## 👨‍💻 Author

**Nethmini M. A. N. Herath**
BSc (Hons) in Information Technology - Sri Lanka Institute of Information Technology (SLIIT)

---

## 📄 License

This project is developed for **academic and research purposes only**.

---

## 🙏 Acknowledgements

* Sri Lanka Institute of Information Technology (SLIIT)
* Supervisors and research panel
* SafeKid Scan research team

---
