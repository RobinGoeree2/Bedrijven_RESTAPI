# Bedrijven_RESTAPI

## Benodigheden:
- Xampp (Webserver)
- Intellij (Java IDE)
- Postman (API controller)

## Instructie installatie

#### Download en installeer Xampp:
https://www.apachefriends.org/index.html

#### Start Xampp.
Na de installatie start het programma Xampp op.
![Xamppstart](https://user-images.githubusercontent.com/56107687/113418177-43302080-93c5-11eb-9f91-434d4319b9d5.png)
Op de foto staat een oudere versie, dit heeft een bellemeringen op de user interface instructie.

#### Start de Apache en MySQL server
![Xampprunningt](https://user-images.githubusercontent.com/56107687/113418288-77a3dc80-93c5-11eb-9ca2-b2cb6d8f537c.png)

#### Database aanmaken
Klik op de 'Admin' knop van MySQL in Xampp, je komt dat op deze pagina terecht.
Vul hier de database naam 'bedrijven_restapi' in en klik op 'create'.
![DBaanmaken](https://user-images.githubusercontent.com/56107687/113418360-9f934000-93c5-11eb-81d7-91eba123e352.png)

#### Import mysql database
Ga naar het 'Import' tabblad en klik op 'Bestand kiezen', kies dan het .sql bestand van het project genaamd 'bedrijven_restapi.sql'.
![DBBestand2](https://user-images.githubusercontent.com/56107687/113418527-f567e800-93c5-11eb-9576-65b9a8a0ffab.png)
Klik op 'Go' om de database file te importeren, het scherm moet er dan ongeveer zo uit zien:
![DBImportSucces](https://user-images.githubusercontent.com/56107687/113418681-3f50ce00-93c6-11eb-9cb0-84ae099e9245.png)

### Import project Intellij
#### Download en installeer Intellij IDEA
Voor dit project is versie 2020.2.1 of nieuwer benodigd, wanneer Intellij IDEA al geïnstalleerd is kan er naar de volgende instructie gegaan worden.
https://www.jetbrains.com/idea/

#### Open Java project
Download het project van deze github, de java files zijn te vinden in de map 'RESTAPI'. 
Start Intellij IDEA en klik op 'Open or Import'.
![IntellijStart](https://user-images.githubusercontent.com/56107687/113418975-cd2cb900-93c6-11eb-8fcd-457ec920fa4c.png)

Ga naar het gedownloade github bestand en open de map 'RESTAPI' in de Intellij IDEA window.
![intellijopenproject](https://user-images.githubusercontent.com/56107687/113419073-ffd6b180-93c6-11eb-8d15-37da1561e29b.png)

Bij het opstarten van het project ziet het scherm er ongeveer zo uit:
![intellijconfigure](https://user-images.githubusercontent.com/56107687/113419114-1250eb00-93c7-11eb-938d-7713c0107ce2.png)
Klik rechts onder in op 'Import Gradle Project' en zorg ervoor dat het Gradle Project geïmporteerd is.

Ga dan via het linker menu door de mappen 'src->main->java->com.company.RESTAPI'.
Open de java file 'RestapiApplication', klik nu op de build knop om dit project te builden.
![intellijBuild](https://user-images.githubusercontent.com/56107687/113419293-71aefb00-93c7-11eb-9338-1f43a8e4ea31.png)

Wanneer het project klaar is met builden kan het gerunned worden.
![intellijRun](https://user-images.githubusercontent.com/56107687/113419333-8c816f80-93c7-11eb-8a6b-aea874f0bbd6.png)

Als het bestand 'RestapiApplication' aan het runnen is ziet het scherm er ongeveer zo uit:
![intellijAPIRunning](https://user-images.githubusercontent.com/56107687/113419398-acb12e80-93c7-11eb-8569-cd517d6bcbaa.png)
Door het programma Xampp weer te openen kan er gekeken worden dat de Tomcat server automatisch is aangezet door het runnen van het project in Intellij IDEA.

### Postman
Als bovenstaande instructies zijn opgevolgd dan kan er via het programma Postman met de API & Database data uitwisselen.
De Api documentatie is te vinden in de map 'API_documentatie'.
Link naar de API documentatie van Postman zelf: https://documenter.getpostman.com/view/12502982/TzCP6Se5#9770aca7-8b43-4242-8a0e-3ed5a5b89fdd
In onderstaande foto is te zien hoe de Postman eruit ziet na het importeren van de api documentatie, hier is ook een api commando uitgevoerd.
![PostmanVoorbeeld](https://user-images.githubusercontent.com/56107687/113419948-bdae6f80-93c8-11eb-8a74-b3e96f9e8cb0.png)

