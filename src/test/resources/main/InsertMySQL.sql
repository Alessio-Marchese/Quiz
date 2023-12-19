insert into utente values('1','root','admin','email1','nome1','cognome1','2000-10-10',NULL,NULL);

insert into linguaggio values('1','Java');
insert into linguaggio values('2','MySQL');
insert into linguaggio values('3','HTML');
insert into linguaggio values('4','CSS');
insert into linguaggio values('5','JavaScript');
insert into linguaggio values('6','Spring');
insert into capitolo values('1','1','Array');
insert into capitolo values('2','2','Query');
insert into capitolo values('3','3','Introduzione');
insert into capitolo values('4','4','Introduzione');
insert into capitolo values('5','5','Introduzione');
insert into capitolo values('6','6','Introduzione');
select * from capitolo;


INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Cosa rappresenta un array in Java?", 
"B) Una collezione di variabili dello stesso tipo", 
"A) Una collezione di oggetti di diversi tipi", 
"C) Un tipo di controllo del flusso", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si dichiara un array di interi in Java?", 
"C) int[] array = new int[5];", 
"A) int array = new int[5];", 
"B) int array[5];", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Qual è l'indice del primo elemento in un array Java?", 
"A) 0", 
"B) 1", 
"C) -1", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si accede all'elemento in terza posizione di un array `arr`?", 
"A) arr[2]", 
"B) arr[3]", 
"C) arr.get(2)", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Qual è la lunghezza dell'array definito come `int[] arr = new int[10];`?", 
"B) 10", 
"A) 9", 
"C) 11",  
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Cosa succede se si prova ad accedere a un indice non esistente in un array?", 
"C) Viene generata un'eccezione ArrayIndexOutOfBoundsException", 
"A) Nulla", 
"B) Viene restituito -1", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si inizializza un array di stringhe con valori predefiniti?", 
"C) Tutte le risposte sopra sono corrette", 
"A) String[] arr = new String[]{\"a\", \"b\", \"c\"};", 
"B) String[] arr = {\"a\", \"b\", \"c\"};", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Qual è il risultato di `arr.length` dove `arr` è un array?", 
"C) La dimensione dell'array", 
"A) La capacità massima dell'array", 
"B) Il numero di elementi effettivamente presenti nell'array", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Come si copia un array `arr1` in un altro array `arr2` in Java?", 
"C) B e C sono entrambe corrette", 
"A) arr2 = arr1;", 
"B) arr2 = new int[arr1.length]; System.arraycopy(arr1, 0, arr2, 0, arr1.length);", 
1);

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id)
VALUES 
("Cosa si intende per array bidimensionale in Java?", 
"A) Un array di array", 
"B) Un array con due elementi", 
"C) Un array che può essere acceso tramite due indici", 
1);

INSERT INTO quiz_vero_falso (domanda,bool,capitolo_id)
VALUES
('Gli array devono avere una misura definita alla loro creazione?',TRUE,'1');
