import express, { Request, Response } from 'express';

const app = express();
const PORT: number = parseInt(process.env.PORT || '3000');

app.get('/', (req: Request, res: Response) => {
  console.log(`Dawid!`);
  res.send('Hello, Docker!');
});

app.get('/dawid', (req: Request, res: Response) => {
  res.send('Dawid');
});

app.get('/test', (req: Request, res: Response) => {
  res.send('Test');
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});