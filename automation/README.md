# Local Docker Spring

Tutte le operazioni vanno eseguite nella cartella automation_wfad, la quale deve essere allo stesso livello dei progetti. (altrimenti vanno modificati i .sh).

 1. Modificare il percorso della JAVA_HOME all'interno dei file ***_build-projects.sh*** e ***_build-docker-images.sh***
 2. Lanciare prima *_build-projects.sh*, quando ha terminato senza errori, lanciare  *_build-docker-images.sh*
 3. Se non già fatto, creare l'immagine di oracle19c e importare i dati
 4. Alla fine di tutto lanciare il comando:
 ```bash 
 docker compose up -d
 ```

## Lanciare microservizio o FE in locale
Basterà stoppare il relativo container su docker, dopodiché si potrà startare in locale.
Dovrà essere startato attivando i profili dev,local (per sovrascrivere le prop necessarie in locale su application-local.properties. 