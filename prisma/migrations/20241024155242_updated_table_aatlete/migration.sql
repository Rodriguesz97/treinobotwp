/*
  Warnings:

  - You are about to drop the column `wekly_progress` on the `atlete` table. All the data in the column will be lost.
  - Added the required column `weekly_progress` to the `atlete` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "atlete" DROP COLUMN "wekly_progress",
ADD COLUMN     "weekly_progress" INTEGER NOT NULL;
