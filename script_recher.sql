CREATE SCHEMA AUTHORIZATION JeuxPourTous;



UPDATE PARCOURS
SET NOM_PARCOURS = 'LES AVENTURES DE SORCIERS'
WHERE ID_PARCOURS = '29'
UPDATE PARCOURS
SET NOM_PARCOURS = 'SUR LA ROUTE DES PHARAONS'
WHERE ID_PARCOURS = '30'
UPDATE PARCOURS
SET NOM_PARCOURS = 'LA PLANETE DES SINGES'
WHERE ID_PARCOURS = '31'

UPDATE UNIVERS
SET NOM_UNIVERS = 'EGYPTE'
WHERE ID_UNIVERS = '30'
UPDATE UNIVERS
SET NOM_UNIVERS = 'KING KONG'
WHERE ID_UNIVERS = '31'
UPDATE UNIVERS
SET NOM_UNIVERS = 'GRECE'
WHERE ID_UNIVERS = '32'
UPDATE UNIVERS
SET NOM_UNIVERS = 'HARRY POTTER'
WHERE ID_UNIVERS = '33'