from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class Task(BaseModel):
    title: str
    description: str

tasks = []

@app.get("/")
def read_root():
    return {"message": "CI/CD Production Pipeline Running"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}

@app.post("/tasks")
def create_task(task: Task):
    tasks.append(task)
    return {"message": "Task created", "task": task}

@app.get("/tasks")
def get_tasks():
    return tasks
