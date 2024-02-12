-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 10. feladat:
CREATE DATABASE halozat
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 12. feladat:
INSERT INTO megallok (id, nev)
  VALUES (198, 'Kőbányai garázs')


-- 13. feladat:
UPDATE jaratok
SET elsoAjtos = 0
WHERE id = 20

-- 14. feladat:
SELECT
  jaratok.jaratSzam
FROM jaratok
WHERE jaratok.elsoAjtos = 1

-- 15. feladat:


-- 16. feladat:


