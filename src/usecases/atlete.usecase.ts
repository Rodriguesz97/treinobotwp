import { Atlete, AtleteRepository } from "../interface/atlete.interface";
import { AtleteRepositoryPrisma } from "../repositories/atlete.repository";

class AtleteUseCase{
    private atleteRepository: AtleteRepository
    constructor(){
        this.atleteRepository = new AtleteRepositoryPrisma()
    }
async create({name, total_workouts, progress, weekly_progress, goal} : Atlete ) : Promise<Atlete>{
    const result = await this.atleteRepository.create({name, total_workouts, progress, weekly_progress, goal})
    return result
}
}
export{AtleteUseCase}

