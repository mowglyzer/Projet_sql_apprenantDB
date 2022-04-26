-- 1.1 Les noms et prénoms des personnes alors effectuer leur stage chez Crédit Agricole
SELECT nom, prenom FROM eleves 
INNER JOIN entreprise
ON eleves.id_entreprise =  entreprise.id
WHERE nom_entreprises = 'Crédit Agricole';

-- 1.2 Les noms et prénoms des personnes alors effectuer leur stage chez Orange et ton ancienneté est supérieure ou égale à deux ans
SELECT nom, prenom FROM eleves
INNER JOIN entreprise
ON eleves.id_entreprise =  entreprise.id
WHERE nom_entreprises = 'orange' and anciennete >= 2;

-- 1.3 Toutes les personnes qui ont un Y dans leur nom de famille
SELECT nom, prenom FROM eleves
WHERE nom LIKE '%y%';

-- 1.4 L'ordre qui vous permettrait de modifier la table pour pouvoir intégrer le secteur d'activité de l’entreprise
ALTER TABLE entreprise
ADD secteur_activite varchar(50);

-- 2.0 Expertise
