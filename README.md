# Movie Recommendation System

Quick setup and run instructions.

Windows (PowerShell):

```powershell
# create venv (if missing)
python -m venv .venv
# activate
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned -Force
.\.venv\Scripts\Activate.ps1
# install deps
pip install -r requirements.txt
# run FastAPI server
uvicorn app:app --reload --host 0.0.0.0 --port 8000
```

Git Bash / WSL / macOS:

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
uvicorn app:app --reload --host 0.0.0.0 --port 8000
```

Notes:
- Ensure `.env` contains `TMDB_API_KEY` if you want TMDB-backed endpoints to work.
- If you don't have the pickle files (`df.pkl`, `indices.pkl`, `tfidf_matrix.pkl`, `tfidf.pkl`), TF-IDF endpoints will be disabled until they are added to the project root.
