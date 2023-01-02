import express, { Express, Request, Response } from 'express';

const app: Express = express();

app.use(express.json());

app.get('/', async (req: Request, res: Response) => {
    res.send({
        message: 'ok'
    });
});


export default app;