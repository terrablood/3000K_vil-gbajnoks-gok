1 Írja ki Magyarország által elért helyezéseket. A kiírásban jelenjen meg a vb éve és helyszíne is!

SELECT helyezes, ev, helyszin
FRom t
where nev = "Magyarország"
;

2 A program írja ki, hogy az '30-as években kik lettek a világbajnokok! Az ország neve mellett szerepeljen az évszám is!

SELECT nev, ev
FRom t
Where ev < 1940 and ev > 1920 and helyezes = 1
;

3 Írja ki Magyarország hányszor jutott ki a vb-re a fájl által tartalmazott időszakban!

Select Count(*)
From t
Where nev = "Magyarország"
;

4 Mely csapat nyert 1960-ban?

Select nev
From t
Where ev = 1960 and helyezes = 1
;

5 Hányszor kapott ki a döntőben Argentína?

Select Count(*)
From t
Where nev = Argentína and helyezes = 2
;

6 Az adatfájl szerint mikor volt a legkorábbi vb?

Select Top 1
From t
order by ev
;

7 Peru hányszor nyert vb-t?

Select Count(*)
From t
Where nev = Peru and helyezes = 1
;

8 Írd ki Chile vb-n elért legjobb helyezését!

Select top 1
From t
Where nev = Csile
order by helyezes
;


9 Mely csapatok nyertek az Angiában rendezett vb-ken? A csapatok neve mellett az évszámot is írja ki!

Select nev
From t
Where helyezes = 1 and helyszin = "Angia"
;

10 Mely csapat nyerte a vb-t, amikor Brazília dobogós helyzést ért el? A győztes csapatok neve mellett az évszámot is írja ki!

Select t2.nev, t2.ev
From t as t1, t as t2
Where t1.nev = "Brazília" and t1.helyezes >1 and and t1.helyezes < 4 and t2.helyezes = 1 and t2.ev = t1.ev
;

11 Kikkel játszott döntőt Brazília? Az ellenfél csapat neve mellett az évszámot is írja ki!

Select t2.nev
From t as t1, t as t2
Where t1.nev = "Brazília" and t1.helyezes =2 and t2.helyezes = 1 and t2.ev = t1.ev
;

12 Mely csapat nyert többször is vb-t?

Select t2.nev
From t as t1, t as t2
Where t1.nev = t2.nev and t1.ev <> t2.ev and t1.helyezes = 1 and t2.helyezes = 1
group by nev
;


13 Mely csapat(ok) nyert(ek) a legtöbbször vb-t? A csapat neve mellett a vb gyözelmmek számát is írja ki! Ha több találat is van, akkor  
   mindegyik szerepeljen!

Select nev, count(helyezes)
From t
where helyezes = 1
group by nev
order by count(helyezes)
;

14 Add meg a különböző helyszíneket, ahol az adatfájl szerint világbajnokság zajlott!

Select nev
From t
group by helyszín
;

15 Melyik évből származik a legtöbb adat az adatok között, a legelső évszámtól napjainkig?

Select top 1 ev
From t
group by ev
order by count(ev) desc
;

16 Melyik évtizedből hány adat származik? (30-as évek, 40-es évek, stb.)

Select count(*)
From t
group by year(ev)
order by count(ev) desc
;

17 Add meg, hogy a lehetséges helyezések közül melyikhez hány adat kapcsolódik az input fájlban? (1. helyezésből ... db, 2. helyezésből ... db, stb.) A kiírás legyen helyezés szerint növekvő sorrendben!

Select count(helyezes)
From t
group by helyezes
;

18 A különböző országok pontversenyeznek is: Az első helyezés 6 pontot ér, a második 5-öt, ... , az hatodik 1 pontot, minden további 
   helyezés pedig 0 pontot ér. Add meg, hogy mely országnak hány pontja van így!

select nev
from t
;

19 Mely országnak van a legtöbb pontja a fent leírt pontversenyben?