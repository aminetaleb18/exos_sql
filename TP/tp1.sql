/*SELECT ville_nom FROM villes_france_free
ORDER BY ville_population_2012 DESC LIMIT 10*/

/*SELECT ville_nom, ville_surface FROM villes_france_free
ORDER BY ville_surface ASC LIMIT 50*/

/*SELECT departement_nom FROM departement
WHERE departement_code LIKE '97%'*/

/*SELECT ville_nom, departement_nom FROM villes_france_free
INNER JOIN departement ON ville_departement = departement_code
ORDER BY ville_population_2012 DESC LIMIT 10*/

/*SELECT departement_nom, departement_code, COUNT(ville_id) FROM departement
LEFT JOIN villes_france_free ON ville_departement = UPPER(departement_code)
GROUP BY departement_id, departement_nom, departement_code
ORDER BY COUNT(ville_id) DESC*/

/*SELECT departement_nom, departement_code, SUM(ville_surface) FROM departement
LEFT JOIN villes_france_free ON ville_departement = UPPER(departement_code)
GROUP BY departement_id, departement_nom, departement_code
ORDER BY SUM(ville_surface) DESC LIMIT 10*/

/*SELECT COUNT(ville_nom) FROM villes_france_free 
WHERE ville_nom LIKE 'Saint%'*/

/*SELECT ville_nom, COUNT(*) FROM villes_france_free
GROUP BY ville_nom HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC*/

/*SELECT ville_nom, ville_surface FROM villes_france_free
WHERE ville_surface > (SELECT (AVG(ville_surface)) FROM villes_france_free)
ORDER BY ville_surface DESC*/

/*SELECT departement_nom, departement_code, SUM(ville_population_2012) FROM departement
JOIN villes_france_free ON departement_code = ville_departement
GROUP BY departement_code, departement_nom HAVING SUM(ville_population_2012) > 2000000
ORDER BY  SUM(ville_population_2012) ASC*/

/*UPDATE villes_france_free SET ville_nom = REPLACE(ville_nom, '-', ' ') WHERE ville_nom LIKE 'SAINT-%'*/
SELECT ville_nom FROM villes_france_free 
WHERE ville_nom LIKE 'Saint%'
