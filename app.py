from flask import Flask, jsonify, request

app = Flask(__name__)

todos = []

@app.route("/")
def hello():
    return jsonify({"message": "Hello, Docker!"})

@app.route("/todos", methods=["GET", "POST"])
def todo_list():
    if request.method == "POST":
        data = request.get_json()
        todos.append(data.get("task"))
        return jsonify({"message": "Task added!", "todos": todos})
    return jsonify({"todos": todos})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)