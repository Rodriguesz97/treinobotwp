import { Atlete, AtleteRepository } from "../interface/atlete.interface";
import { prisma } from "../database/prisma-client";

class AtleteRepositoryPrisma implements AtleteRepository{
    async create(data: Atlete): Promise<Atlete> {
        const result = await prisma.atlete.create({
            data:{
                name: data.name,
                total_workouts: data.total_workouts,
                progress: data.progress,
                weekly_progress: data.weekly_progress,
                goal: data.goal         
            }
        })
        return result
    }
    async  findByName(name:string): Promise<Atlete | null> {
        const result= await prisma.atlete.findFirst({where:{
            name
        }
    })
    return result || null
    }
}
export {AtleteRepositoryPrisma}