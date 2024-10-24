
export interface Atlete {
    //id: string;
    name: string;
    total_workouts: number;
    progress: number;
    weekly_progress: number;
    goal: number;
    //updatedAt: Date;
    //createdAt: Date;
  }

  export interface CreateAtlete{
    name: string;
    total_workouts: number;
    progress: number;
    weekly_progress: number;
    goal: number;
  }

  export interface AtleteRepository {
    create(data: Atlete): Promise<Atlete>
  }








