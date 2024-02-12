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
SELECT
  megallok.nev
FROM megallok
WHERE megallok.nev LIKE '%sétány'
ORDER BY megallok.nev

-- 16. feladat:
SELECT
  halozat.sorszam,
  megallok.nev AS megallo,
  jaratok.jaratSzam
FROM halozat
  INNER JOIN jaratok
    ON halozat.jarat = jaratok.id
  INNER JOIN megallok
    ON halozat.megallo = megallok.id
WHERE jaratok.jaratSzam = 'CITY'
AND halozat.irany ='A'
ORDER BY halozat,sorszam

-- 17. feladat:

  megallok.nev AS megallo,
  COUNT(halozat.jarat) AS jaratokSzama
FROM halozat
  INNER JOIN jaratok
    ON halozat.jarat = jaratok.id
  INNER JOIN megallok
    ON halozat.megallo = megallok.id
GROUP BY megallok.nev
HAVING COUNT(halozat.jarat) >= 3