/*
  Warnings:

  - You are about to drop the `Atlete` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Workout` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Workout" DROP CONSTRAINT "Workout_atlete_id_fkey";

-- DropTable
DROP TABLE "Atlete";

-- DropTable
DROP TABLE "Workout";

-- CreateTable
CREATE TABLE "atlete" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "total_workouts" INTEGER NOT NULL,
    "progress" INTEGER NOT NULL,
    "wekly_progress" INTEGER NOT NULL,
    "goal" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "atlete_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "workout" (
    "id" TEXT NOT NULL,
    "atlete_id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "workout_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "workout" ADD CONSTRAINT "workout_atlete_id_fkey" FOREIGN KEY ("atlete_id") REFERENCES "atlete"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
