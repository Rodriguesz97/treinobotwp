import { FastifyInstance } from "fastify";
import {AtleteUseCase} from "../usecases/atlete.usecase"
import { Atlete } from "../interface/atlete.interface";

export async function atleteRoutes(fastify:FastifyInstance){
    const atleteUseCase = new AtleteUseCase()
    fastify.post<{Body: Atlete}>('/', (req, reply) => {
        const{name, total_workouts, progress, weekly_progress, goal} =  req.body
        try{
            const data = atleteUseCase.create({
                name, 
                total_workouts, 
                progress, 
                weekly_progress, 
                goal
            })
            return reply.send(data)
        }catch (error) {
            reply.send(error)
        }
    })
    fastify.get('/' , (req,reply) => {
            reply.send({hello: 'world'})
        },
    )
}