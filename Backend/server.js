const express = require("express");
const app = express();
const PORT = 3000;

app.use(express.json());

let dataStore = [];

// POST - menerima data dari frontend
app.post("/form", (req, res) => {
  dataStore.push(req.body);
  res.json({ message: "Data berhasil disimpan", data: req.body });
});

// GET - mengembalikan semua data
app.get("/form", (req, res) => {
  res.json(dataStore);
});

app.listen(PORT, () => {
  console.log(`✅ Server running at http://localhost:${PORT}`);
});
