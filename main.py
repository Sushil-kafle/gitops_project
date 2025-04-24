import socket
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def return_ip():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return {"hostname": hostname, "ip": ip_address}


@app.get("/health")
def read_health():
    return {"status": "ok"}
