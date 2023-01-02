import { config } from 'dotenv';
import app from './app';

config();

const PORT = process.env.PORT || 3000;

app.listen(PORT, (): void => {
  console.log(`Server Running here 👉 http://localhost:${PORT}`);
});
