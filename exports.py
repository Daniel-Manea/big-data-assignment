import pandas as pd
import io

async def fetch_data(data_type):
    # Read the CSV file into a DataFrame
    df = pd.read_csv(f"../app/data/{data_type}.csv", delimiter=",")
    
    # Convert the DataFrame to CSV format in memory
    csv_data = df.to_csv(index=False)
    
    return csv_data
