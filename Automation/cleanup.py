import os, time

path = "/home/cron/"
now = time.time()

for file in os.listdir(path):
    filepath = os.path.join(path, file)
    if os.stat(filepath).st_mtime < now - 30 * 86400:  # 30 hari
        os.remove(filepath)
        print(f"File {file} dihapus")
