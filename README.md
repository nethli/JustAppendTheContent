# 📁 PowerShell File Append Automation Tool

This PowerShell script is designed to **append content** from a source file or directory into a specified **destination file**, supporting two modes of operations, which are **Automated Mode** and **Manual Mode**.

---

## 🛠️ How This Works

### 🔧 Automate Mode - Automatically handles appending without much human interaction.

- Prompts the user to input:
  - ✅ A **source path** (can be a file or a folder)
  - ✅ A **destination file path**
  
- If the source is:
  - 📄 A file → Appends its content directly to the destination file
  - 📁 A folder → Recursively finds all files and appends their content to the destination
 
- Output
<img width="1914" height="1021" alt="Screenshot 2025-07-17 125615" src="https://github.com/user-attachments/assets/208c9b75-b92a-4635-b0e1-863df0c77bbe" />

<img width="1918" height="1013" alt="image" src="https://github.com/user-attachments/assets/f773c69d-46c9-43e6-aff3-d067b3fc62ef" />

<img width="1918" height="328" alt="image" src="https://github.com/user-attachments/assets/a4706690-64dd-483d-ac35-ee60f159a0d5" />

---

### 🧭 Manual Mode – This is the manual version of the appending which needs human interaction.

- In this mode, prompt asks the confirmation on appending. 
- If the user confirms (Y, which means Yes):
- Prompt asks for source and destination paths.

- If the source is:
  - 📄 A file → Appends its content directly to the destination file
  - 📁 A folder → Recursively finds all files and appends their content to the destination
    
- If the user declines (N, which means No), it exits without performing any action.

- Output
<img width="1918" height="1007" alt="image" src="https://github.com/user-attachments/assets/e384d7cf-1dae-4f8d-a511-25a2e8653b57" />

<img width="1918" height="952" alt="image" src="https://github.com/user-attachments/assets/59481d3c-7731-4ed9-bdee-c15c5d15f42d" />

<img width="1918" height="1013" alt="image" src="https://github.com/user-attachments/assets/9a6fa505-b218-42c0-be88-0ebbfd3ba860" />

---

## 🚀 What I Learned 

- 🌱 PowerShell cmdlets
- 🌱 Interact with Conditions
- 🌱 How to Write PWSH Functions
- 🌱 Managing Files & Directories
- 🌱 Human Interaction through Prompts


## 🧪 The Big Picture 

- In many scenarios whether during log management, report generation, or file processing, there's a recurring need to combine data from multiple sources into a single destination file. 

- Doing this manually is time consuming, error prone, and inefficient, especially when the input files grow or change frequently.

- The File Append Automation Tool, which was created with PowerShell solves this problem by providing a simple, script based solution.

- It ensures consistency, saves time, and reduces human intervention, whether you're working interactively in manual mode, or integrating it into larger systems via automated mode.



