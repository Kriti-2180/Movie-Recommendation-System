# Activate venv and run uvicorn for development (PowerShell)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
.\.venv\Scripts\Activate.ps1
uvicorn app:app --reload --host 0.0.0.0 --port 8000
