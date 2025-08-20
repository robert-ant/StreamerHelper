# 📘 Streamer Relay Helper

## What is this?
This is a **Streamer Relay helper**.  
It allows your computer to automatically notify the website when you **start or stop streaming**.  

- ✅ No need to click extra buttons on the site  
- ✅ Very lightweight (uses almost no resources)  
- ✅ Runs silently in the background  
- ✅ Safe: you can read all the code here before installing  
- ✅ You can uninstall anytime  

---

## 📂 Files included
- **`Install-And-Run-StreamerRelay.bat`**  
  → One-click installer. Asks for your info and sets up the relay.  

- **`install_streamer_relay.ps1`**  
  → The PowerShell script that does the setup (called by the `.bat` file).  

- **`uninstall_streamer_relay.ps1`**  
  → Cleanly removes the relay.  

- **`Uninstall-StreamerRelay.bat`**  
  → One-click uninstaller.  

- **`streamer_relay.js`**  
  → The small Node.js program that actually talks to the server.  

---

## 🚀 Installation
1. Download all the files.  
2. Double-click **`Install-And-Run-StreamerRelay.bat`**.  
3. Enter the following when asked:  
   - `WEBHOOK_BASE`: The server link given by the admin (e.g. `https://yourserver.com`)  
   - `USER_ID`: **Provided by the admin** (e.g. `user1`, `user2`, etc.)  
   - `USER_SECRET`: **Personal token provided by the admin** (unique to you)  
 
4. That’s it — the relay will now run automatically in the background.  

---

## ❌ Uninstall
1. Double-click **`Uninstall-StreamerRelay.bat`**.  
2. Enter your `USER_ID`.  
3. The relay will be removed completely.  

---

## 🔒 Safety Notes
- The relay only sends **online/offline status** to the server  
- It does **not** log your keystrokes, files, or any personal data  
- You can open and read all scripts before running  
- If you don’t want it anymore, uninstall with the provided `.bat` file  

---
