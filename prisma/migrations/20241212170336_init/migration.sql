-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "inventoryValue" DOUBLE PRECISION NOT NULL,
    "accountBalance" DOUBLE PRECISION NOT NULL,
    "field" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SkinMaster" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "collection" TEXT NOT NULL,
    "rarity" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "image" TEXT NOT NULL,
    "stattrak" BOOLEAN NOT NULL,

    CONSTRAINT "SkinMaster_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CaseMaster" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "skins" TEXT NOT NULL,
    "currentPrice" DOUBLE PRECISION NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "CaseMaster_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SkinOwned" (
    "id" TEXT NOT NULL,
    "skinId" TEXT NOT NULL,
    "float" DOUBLE PRECISION NOT NULL,
    "pattern" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "SkinOwned_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CaseOwned" (
    "id" TEXT NOT NULL,
    "caseId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "CaseOwned_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "User_username_email_password_inventoryValue_accountBalance__idx" ON "User"("username", "email", "password", "inventoryValue", "accountBalance", "field");

-- CreateIndex
CREATE INDEX "SkinMaster_id_name_collection_rarity_type_currentPrice_imag_idx" ON "SkinMaster"("id", "name", "collection", "rarity", "type", "currentPrice", "image", "stattrak");

-- CreateIndex
CREATE INDEX "CaseMaster_id_name_skins_currentPrice_image_idx" ON "CaseMaster"("id", "name", "skins", "currentPrice", "image");

-- CreateIndex
CREATE INDEX "SkinOwned_id_skinId_float_pattern_idx" ON "SkinOwned"("id", "skinId", "float", "pattern");

-- CreateIndex
CREATE INDEX "CaseOwned_id_caseId_userId_idx" ON "CaseOwned"("id", "caseId", "userId");

-- AddForeignKey
ALTER TABLE "SkinOwned" ADD CONSTRAINT "SkinOwned_skinId_fkey" FOREIGN KEY ("skinId") REFERENCES "SkinMaster"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SkinOwned" ADD CONSTRAINT "SkinOwned_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CaseOwned" ADD CONSTRAINT "CaseOwned_caseId_fkey" FOREIGN KEY ("caseId") REFERENCES "CaseMaster"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CaseOwned" ADD CONSTRAINT "CaseOwned_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
