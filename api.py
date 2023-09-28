from fastapi import FastAPI
from fastapi.responses import JSONResponse
from exports import fetch_data

app = FastAPI()

@app.get("/customer")
async def get_customer_data():
    csv_data = await fetch_data("customer")

    # Return the CSV data as a CSV file using JSONResponse
    return csv_data
