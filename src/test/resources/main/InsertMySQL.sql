insert into utente values('1','root','admin','email1','nome1','cognome1','2000-10-10',NULL,NULL);

insert into linguaggio values('1','Java');
insert into linguaggio values('2','HTML');

INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Introduzione');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Variabili');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Operatori');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Strutture di controllo');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Array');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Stringhe');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Funzioni');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Oggetti e Classi');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Ereditarietà');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Polimorfismo');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Gestione delle eccezioni');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'File I/O');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Thread');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Collezioni');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Interfacce');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Lambda Expressions');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'JavaFX');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Servlet');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'JDBC');
INSERT INTO capitolo (linguaggio_id, nome) VALUES ('1', 'Design Patterns');



INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Cosa rappresenta un array in Java?", 
"B) Una collezione di variabili dello stesso tipo", 
"A) Una collezione di oggetti di diversi tipi", 
"C) Un tipo di controllo del flusso", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si dichiara un array di interi in Java?", 
"C) int[] array = new int[5];", 
"A) int array = new int[5];", 
"B) int array[5];", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Qual è l'indice del primo elemento in un array Java?", 
"A) 0", 
"B) 1", 
"C) -1", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si accede all'elemento in terza posizione di un array `arr`?", 
"A) arr[2]", 
"B) arr[3]", 
"C) arr.get(2)", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Qual è la lunghezza dell'array definito come `int[] arr = new int[10];`?", 
"B) 10", 
"A) 9", 
"C) 11",  
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Cosa succede se si prova ad accedere a un indice non esistente in un array?", 
"C) Viene generata un'eccezione ArrayIndexOutOfBoundsException", 
"A) Nulla", 
"B) Viene restituito -1", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si inizializza un array di stringhe con valori predefiniti?", 
"C) Tutte le risposte sopra sono corrette", 
"A) String[] arr = new String[]{\"a\", \"b\", \"c\"};", 
"B) String[] arr = {\"a\", \"b\", \"c\"};", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Qual è il risultato di `arr.length` dove `arr` è un array?", 
"C) La dimensione dell'array", 
"A) La capacità massima dell'array", 
"B) Il numero di elementi effettivamente presenti nell'array", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si copia un array `arr1` in un altro array `arr2` in Java?", 
"C) B e C sono entrambe corrette", 
"A) arr2 = arr1;", 
"B) arr2 = new int[arr1.length]; System.arraycopy(arr1, 0, arr2, 0, arr1.length);", 
5);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Cosa si intende per array bidimensionale in Java?", 
"A) Un array di array", 
"B) Un array con due elementi", 
"C) Un array che può essere acceso tramite due indici", 
5);

INSERT INTO quiz_vero_falso (domanda,bool,capitolo_id)
VALUES
('Gli array devono avere una misura definita alla loro creazione?',TRUE,'1');

select * from quiz_multiplo;
select * from quiz_vero_falso;
select * from linguaggio;
  
  insert into contenuto(contenuto, tipo, capitolo_id) values('Gli Array','titolo','5');
   insert into contenuto(contenuto, tipo, capitolo_id) values('','spazio','5');
    insert into contenuto(contenuto, tipo, capitolo_id) values
    ('In Java, un array è una struttura dati che contiene una sequenza di elementi dello stesso tipo, 
    accessibili mediante un indice numerico. Gli array iniziano con indice zero e consentono di 
    memorizzare e manipolare dati in modo efficiente.','paragrafo','5');
     insert into contenuto(contenuto, tipo, capitolo_id) values('img/array.png','immagine','5');
      insert into contenuto(contenuto, tipo, capitolo_id) values('Sopra un esempio di array','paragrafo','5');
  
select * from capitolo;
select * from linguaggio;
select * from quiz_multiplo;


