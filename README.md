# Create Stack Labs Test Environment

Création de l'environnement de test technique pour Stack Labs.

# Dependencies

* Google Cloud SDK
* Terraform CLI


# Préparation

Assurez-vous que la gcloud CLI est authentifiée auprès du compte et que le projet cible est défini comme principal.

Exécutez les commandes ci-dessous pour activer la facturation du projet et activer les API requises.

```sh
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
```

# Création de l'environnement

1. Verifique o Arquivo de variáveis [variables.tf](https://github.com/stacklabs-test/environment/blob/main/variables.tf) et assurez-vous qu'il répond à l'exigence.
2. Exécutez la commande ci-dessous pour initialiser Terraform
```sh
terraform init
```
3. Exécutez la commande suivante pour vérifier rapidement si la configuration ne contient aucune erreur de configuration.
```sh
terraform validate
```
4. Exécutez la commande ci-dessous pour voir le résumé détaillé des ressources qui seront créées.
```sh
terraform plan
```
5. Créez l'environnement en exécutant la commande suivante
```sh
terraform apply
```

Tout est prêt, l'environnement est créé!
