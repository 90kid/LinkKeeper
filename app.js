const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  console.log(`Dawid!`);
  res.send('Hello, Docker!');
});

app.get('/dawid', (req, res) => {
  res.send('Dawid');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});