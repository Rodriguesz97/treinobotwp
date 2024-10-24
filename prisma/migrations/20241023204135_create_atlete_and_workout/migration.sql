-- CreateTable
CREATE TABLE "Atlete" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "total_workouts" INTEGER NOT NULL,
    "progress" INTEGER NOT NULL,
    "wekly_progress" INTEGER NOT NULL,
    "goal" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Atlete_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Workout" (
    "id" TEXT NOT NULL,
    "atlete_id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Workout_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Workout" ADD CONSTRAINT "Workout_atlete_id_fkey" FOREIGN KEY ("atlete_id") REFERENCES "Atlete"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
