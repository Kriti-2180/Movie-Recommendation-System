$ErrorActionPreference = "Stop"

$env:API_BASE = "http://127.0.0.1:8000"

Start-Process -FilePath ".\.venv\Scripts\python.exe" `
    -ArgumentList "-m", "uvicorn", "main:app", "--reload", "--host", "127.0.0.1", "--port", "8000" `
    -WindowStyle Hidden

.\.venv\Scripts\streamlit.exe run app.py
