Processus ETL pour un chargement incrémental en utilisant SSIS

Source de données : Base de données NorthWind de Microsoft (dérouler le script ScriptNorthwind(source))
Destination : un data warehouse DWNorthWindSales ( dérouler le script TSQL : ScriptDWNorthwindSales(Destination))

Le chargement répond à ces trois besoins :

        1- S’il y a de nouvelles données dans la source, il faut insérer ces enregistrements dans la table cible.
        2-S’il y a des valeurs mises à jour dans la source, il faut mettre à jour ces enregistrements dans la table cible.
        3-S’il y a des valeurs supprimées dans la source, il est recommandé de les conserver dans la table cible en indiquant la date de suppression.
          
Les tables concernées : Table DimCustomers, Tables DimProducts et FactSales


Pour tester la solution, ajout d'enregistrements dans la source (dérouler le script : Requete pour ajout enregistrement)
<img width="492" height="366" alt="Screenshot 2025-10-27 101501" src="https://github.com/user-attachments/assets/2536ecb6-6dae-48f2-bf30-a7a8b653eae5" />
