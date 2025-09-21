import datetime
import csv
import os

path = "/home/cron/"
now = datetime.datetime.now()
filename = f"cron_{now.strftime('%d%m%Y_%H.%M')}.csv"
filepath = os.path.join(path, filename)

# Simulasi data
data = [["id", "value"], [1, "test"], [2, "collect"]]

os.makedirs(path, exist_ok=True)

with open(filepath, "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerows(data)

print(f"File {filename} berhasil dibuat.")
    