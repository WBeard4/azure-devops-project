import os
from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    return jsonify({
        "message": "is this thing on",
        "environment": os.environ.get("ENVIRONMENT", "unknown"),
        "status":"ok"
    })

@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "healthy"}), 200

if __name__ == "__main__":
    port=int(os.environ.get("PORT", 8000))
    app.run(host="0.0.0.0", port=port, debug=False)