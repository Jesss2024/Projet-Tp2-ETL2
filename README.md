processus ETL pour un chargement incrémental en utilisant avec SSIS
Source de données : Base de données NorthWind de Microsoft
Destination : un data warehouse DWNorthWindSales initialement crée( voir projet....)
Le chargement répond à ces trois besoins :

 1- S’il y a de nouvelles données dans la source, il faut insérer ces enregistrements dans la table cible.
  2-S’il y a des valeurs mises à jour dans la source, il faut mettre à jour ces enregistrements dans la table cible.
   3-S’il y a des valeurs supprimées dans la source, il est recommandé de les conserver dans la table cible en indiquant la date de suppression.
