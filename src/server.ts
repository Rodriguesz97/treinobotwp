import {Client} from 'whatsapp-web.js'
import fastify,{FastifyInstance} from 'fastify'
import {atleteRoutes} from './routes/atlete.routes'
import { PrismaClient } from '@prisma/client' 

const clientArg =  {puppeteer:{headless:true}}

const client = new Client(clientArg)

client.on('qr', (qr: string) => {
    console.log('QR RECEIVED', qr);
});

client.on('ready', () => {
    console.log('Client is ready!');
});

client.initialize();


const app: FastifyInstance = fastify()

app.register(atleteRoutes,{
  prefix:'/atletes'
})

app
  .listen({
    host: '0.0.0.0',
    port: process.env.PORT ? Number(process.env.PORT) : 3333,
  })
  .then(() => {
    console.log('HTTP Server is running')
  })










