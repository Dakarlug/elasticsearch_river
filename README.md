elasticsearch_river
===================

elasticsearch_river  for postgres db



Bonjour 

Nous avions parl� il y'a quelques temps sur la liste des problemes li�s
a la performance des bases de donn�es , surtout lorsque celles ci doivent
traiter aussi bien des requetes  d'insertions que de selections , le constat 
est que lorsque vous faites de la recherche Full -text sur une bases de donn�es
classique contenant quelques centaines de milliers de donn�es vous etes tres 
rapidement confront�s a des performances dans l'execution de vos requetes , 
et vous commencez a indexer et a insulter votre base de donn�es , mais  ce 
que vous avez oubli� c'est que  vous etes  entrain de deporter un probleme la 
ou il y'a en pas ,

On a dit base de donn�es et  pas moteur de recherche de donn�es , votre
 base de donn�es n'a pas et� consu pour faire de la recherche de donn�es , 
mais plutot juste une base de donn�e : ) , je sais c'est du sarcasme :) . Alors je 
pense qu'il est logique d'utliserun moteur de recherche de donn�es pour faire de
la recherche Full-Text dans votre base de donn�es et d'arreter de l'insulter :)

### Attention ###

On peut effectivement faire de la recherche avec une base de donnees , mais il 
est conseill� d'utiliser un moteur de recherche  pour faire de la recherche dans
votre base de donn�es, c'est loqique je pense , Non :)

###

Il y'a deux moteurs de recherche qui existe sur la marche Open source , l'un 
d'eux s'appelle solr ( le Moteur de recherche prefere de Thomas Noel :), mais 
c'est un vieux moteur de recherche , et il faut vraiment etre un Maitre pour s'y 
frotter :).

L'autre choix que vous avez est elasticsearch , qui lui est plus rescent mais 
en realit� n'est que un Fork de solr , il est assez mature maintenant et est 
utilis� comme moteur de recherche par de grande structure et qui traitent 
une quantite d'information enorme a un temps record . Ceux qui utilise github 
pour faire de la recherche Full-Text ne me dementiront pas. 



Vous pouvez voir avec ce Tutorial [1] pour installer elasticsearch dans votre 
distribution Linux prefer�e , debian de preference: ) , et creer un RIVER entre 
elasticsearch et Votre base de donn�es , Ne vous inquitez  pas , il est tellement
facile a deplugger si vous ne trouver pas satisfaction , mais d'experience vous 
n'aurez jamais a le desintaller :)


[1] -- https://github.com/Dakarlug/elasticsearch_river

--Ad