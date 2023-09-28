from fastapi import FastAPI
from api.exports import fetch_data
app = FastAPI()

@app.get("/{url_path:path}")
async def GET(url_path):
    csv_data = await fetch_data(url_path)
    return csv_data
