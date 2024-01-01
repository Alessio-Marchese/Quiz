-- utente root
insert into utente values('1','root','admin','email1@gmail.com','nome1','cognome1','2000-08-10',3289346,NULL);
-- linguaggi
insert into linguaggio values('1','Java');
insert into linguaggio values('2','HTML');
insert into linguaggio values('3','CSS');
insert into linguaggio values('4','JavaScript');
-- badges
insert into badge values('1','Java');
insert into badge values('2','HTML');
insert into badge values('3','CSS');
insert into badge values('4','JavaScript');
-- capitoli java
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
-- capitoli html
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Introduzione a HTML', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Struttura di Base di una Pagina HTML', 2);

INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Elementi di Testo e Formattazione', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Collegamenti e Immagini', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Tabelle e Moduli', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Uso di CSS con HTML', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Elementi Semantici in HTML5', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Multimedia e Grafica', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('Accessibilità e Best Practices', 2);
INSERT INTO capitolo (nome, linguaggio_id) VALUES ('HTML Avanzato e API', 2);
-- capitoli CSS
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Introduzione');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Selezione degli elementi');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Box Model');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Layout con Flexbox');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Layout con Grid');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Posizionamento');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Transizioni e Animazioni');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Media Queries');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Responsive Design');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Pseudo-classi e Pseudo-elementi');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Font e Testo');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Colori e Sfondi');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (3, 'Trasformazioni e Transizioni');
-- capitoli JavaScript
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Introduzione a JavaScript');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Variabili e Tipi di Dati');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Operatori');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Strutture di Controllo (if, else, switch)');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Cicli (for, while, do-while)');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Funzioni');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Array');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Oggetti e Prototipi');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Gestione degli Errori (try, catch)');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Eventi e Callback');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'DOM (Document Object Model)');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'AJAX e Fetch API');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'Async/Await');
INSERT INTO capitolo (linguaggio_id, nome) VALUES (4, 'ES6+ Features');

-- Quiz multiplo sull'introduzione generale di Java (Capitolo ID: 1)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è lo scopo principale di Java?", "Sviluppare applicazioni cross-platform", "Creare siti web interattivi", "Analizzare dati statistici", 1),
("Cos'è la JVM in Java?", "Java Virtual Machine", "Java Visual Model", "Java Virtual Memory", 1),
("Cosa significa il termine 'write once, run anywhere' in Java?", "Il codice Java può essere eseguito su diverse piattaforme senza ricompilazione", "Scrivere il codice una sola volta e farlo girare ovunque", "Scrivere codice una sola volta e farlo girare solo su Windows", 1),
("Java è un linguaggio di programmazione adatto per la creazione di?", "Applicazioni distribuite e piattaforme mobili", "Siti web statici", "Applicazioni di grafica avanzata", 1),
("Quale dei seguenti non è un tipo di dato primitivo in Java?", "String", "int", "boolean", 1);

-- Quiz Vero/Falso sull'introduzione generale di Java (Capitolo ID: 1)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("Java è un linguaggio di programmazione orientato agli oggetti?", TRUE, 1),
("Le applicazioni Java possono essere eseguite su diverse piattaforme senza la necessità di modifiche?", TRUE, 1),
("Java è un linguaggio di programmazione interpretato?", FALSE, 1),
("Il logo di Java rappresenta una tazza di caffè?", TRUE, 1),
("Java è stato progettato principalmente per lo sviluppo di giochi?", FALSE, 1);


-- Quiz multiplo sul capitolo "Variabili" in Java

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
('Quale tipo di variabile in Java è immutabile?', 'final', 'static', 'volatile', 2),
('Qual è il valore di default per una variabile di tipo int in Java?', '0', '1', '-1', 2),
('Java supporta il concetto di variabile globale?', 'No', 'Sì', 'Solo in determinate situazioni', 2),
('Cosa restituisce il metodo length() quando chiamato su una stringa?', 'La lunghezza della stringa', 'Il primo carattere della stringa', 'La posizione di un carattere specifico', 2),
("Qual è il risultato dell'operazione 5 / 2 in Java?", '2.5', '2', '2.0', 2);

-- Quiz Vero/Falso sul capitolo "Variabili" in Java

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
('In Java, il tipo di dato char può rappresentare un singolo carattere Unicode?', TRUE, 2),
('Le variabili di tipo double in Java occupano sempre più spazio di memoria rispetto alle variabili di tipo int?', TRUE, 2),
('Le variabili di tipo String in Java sono immutabili?', TRUE, 2),
('Java consente la dichiarazione di variabili senza inizializzarle?', FALSE, 2),
('In Java, è possibile dichiarare una variabile di tipo boolean e assegnarle un valore numerico?', FALSE, 2);

-- Quiz multiplo sul capitolo "Operatori" in Java

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è l'operatore corretto per confrontare l'uguaglianza in Java?", '==', '=', '!=', 3),
("Cosa restituisce l'operatore logico AND (&&) quando entrambe le condizioni sono vere?", 'true', 'false', 'null', 3),
("Quale operatore viene utilizzato per incrementare il valore di una variabile in Java?", '++', '--', '+=', 3),
("In una dichiarazione if, quale operatore viene utilizzato per verificare se una condizione è falsa?", '!', '||', '&&', 3),
("Qual è l'output di 5 % 2 in Java?", '1', '2', '2.5', 3);

-- Quiz Vero/Falso sul capitolo "Operatori" in Java

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, l'operatore di confronto '==' confronta anche il tipo di dati?", TRUE, 3),
("L'operatore di concatenazione di stringhe in Java è '+='?", FALSE, 3),
("L'operatore di incremento '--' decrementa il valore di una variabile di 1 in Java?", TRUE, 3),
("L'operatore di divisione in Java ('/') restituisce sempre un valore intero?", FALSE, 3),
("L'operatore logico '||' restituisce TRUE se almeno una delle condizioni è vera?", TRUE, 3);

-- Quiz multiplo sul capitolo "Strutture di controllo" in Java

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Quale istruzione è utilizzata per eseguire un blocco di codice ripetutamente in base a una condizione?", 'while', 'for', 'do-while', 4),
("In una dichiarazione 'switch' in Java, quale istruzione viene eseguita se nessun 'case' corrisponde all'espressione valutata?", 'default', 'break', 'case', 4),
("Quale istruzione in Java viene utilizzata per interrompere l'esecuzione di un ciclo?", 'break', 'continue', 'return', 4),
("In una dichiarazione 'if-else', cosa accade se la condizione di 'if' è falsa e non c'è una clausola 'else'?", "Nessuna delle clausole 'if' o 'else' viene eseguita", "Viene eseguita la clausola 'if'", "Viene generata un'eccezione", 4),
("Quale ciclo in Java garantisce l'esecuzione del blocco di codice almeno una volta?", 'do-while', 'while', 'for', 4);

-- Quiz Vero/Falso sul capitolo "Strutture di controllo" in Java

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, è possibile avere un 'if' senza una clausola 'else'?", TRUE, 4),
("Il costrutto 'switch' può essere utilizzato solo con valori numerici in Java?", FALSE, 4),
("In un ciclo 'for' in Java, la clausola di inizializzazione viene eseguita solo una volta all'inizio del ciclo?", TRUE, 4),
("L'istruzione 'continue' in Java termina immediatamente l'intero ciclo corrente?", FALSE, 4),
("Il costrutto 'do-while' in Java può essere sostituito da un ciclo 'while' equivalente?", TRUE, 4);

-- Quiz multiplo sul capitolo "Array" in Java (Capitolo ID: 5)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è il modo corretto per dichiarare un array in Java?", 'int[] myArray;', 'array myArray[];', 'int myArray();', 5),
("In Java, come si accede al terzo elemento di un array?", 'myArray[2];', 'myArray(2);', 'myArray.third();', 5),
("Qual è il risultato di concatenare due array in Java?", 'Un nuovo array contenente gli elementi di entrambi gli array', 'Una stringa rappresentante gli array combinati', 'Un oggetto contenente gli array originali', 5),
("Cosa restituisce il metodo 'length' chiamato su un array in Java?", 'Il numero di elementi nell array', 'La dimensione dell array', 'La somma degli elementi', 5),
("Quale metodo è utilizzato per ordinare un array in ordine crescente in Java?", 'Arrays.sort()', 'Array.order()', 'Array.sort()', 5);

-- Quiz Vero/Falso sul capitolo "Array" in Java (Capitolo ID: 5)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, un array può contenere elementi di tipi diversi?", FALSE, 5),
("L'indice di un array inizia sempre da 1 in Java?", FALSE, 5),
("Gli array in Java possono essere ridimensionati dinamicamente?", FALSE, 5),
("Il metodo 'clone()' in Java crea una copia superficiale dell'array?", TRUE, 5),
("Un array in Java può avere una lunghezza di zero?", TRUE, 5);


-- Quiz multiplo sul capitolo "Stringhe" in Java (Capitolo ID: 6)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Quale operatore è utilizzato per concatenare stringhe in Java?", '+', '&', '.', 6),
("Qual è il metodo utilizzato per ottenere la lunghezza di una stringa in Java?", 'length()', 'size()', 'count()', 6),
("In Java, le stringhe sono immutabili. Cosa significa ciò?", 'Non possono essere modificate dopo la creazione', 'Possono essere modificate liberamente', 'Sono sempre vuote', 6),
("Qual è il risultato di 'Hello'.substring(1, 4) in Java?", 'ell', 'llo', 'Hello', 6),
("Qual è il modo corretto per confrontare due stringhe in Java?", 'str1.equals(str2)', 'str1 == str2', 'str1.compare(str2)', 6);

-- Quiz Vero/Falso sul capitolo "Stringhe" in Java (Capitolo ID: 6)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, una stringa può essere rappresentata come un array di caratteri?", TRUE, 6),
("Il metodo 'toUpperCase()' trasforma una stringa in minuscolo?", FALSE, 6),
("Il metodo 'trim()' in Java rimuove gli spazi solo all'inizio della stringa?", FALSE, 6),
("Il carattere di escape '\\' può essere utilizzato per rappresentare una singola virgoletta in una stringa in Java?", TRUE, 6),
("La concatenazione di stringhe in Java può essere eseguita usando il metodo 'concat()'?", TRUE, 6);

-- Quiz multiplo sul capitolo "Funzioni" in Java (Capitolo ID: 7)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è il termine corretto per una funzione all'interno di una classe in Java?", 'Metodo', 'Procedure', 'Routine', 7),
("In Java, cosa rappresenta la parola chiave 'void' in una dichiarazione di funzione?", 'Nessun tipo di ritorno', 'Funzione senza argomenti', 'Funzione senza corpo', 7),
("Cosa rappresenta la firma di una funzione in Java?", 'Il tipo di ritorno e i tipi dei parametri', 'Solo i tipi dei parametri', 'Solo il tipo di ritorno', 7),
("In Java, cosa rappresenta la parola chiave 'static' in una dichiarazione di funzione?", 'Metodo di classe', 'Funzione privata', 'Funzione di istanza', 7),
("Qual è il modo corretto per chiamare un metodo di un oggetto in Java?", 'oggetto.metodo()', 'metodo.oggetto()', "Chiamata diretta a 'metodo'", 7);

-- Quiz Vero/Falso sul capitolo "Funzioni" in Java (Capitolo ID: 7)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, una funzione può restituire più di un valore?", FALSE, 7),
("I parametri di una funzione in Java possono avere valori di default?", FALSE, 7),
("Un metodo di classe in Java può essere chiamato senza creare un'istanza della classe?", TRUE, 7),
("Una funzione in Java può avere più di un metodo con lo stesso nome?", TRUE, 7),
("La parola chiave 'return' in una funzione restituisce un valore e termina l'esecuzione della funzione?", TRUE, 7);

-- Quiz multiplo sul capitolo "Oggetti e Classi" in Java (Capitolo ID: 8)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è il modo corretto per creare un oggetto in Java?", "NomeClasse oggetto = new NomeClasse();", "new NomeClasse();", "create NomeClasse;", 8),
("Cosa rappresenta 'this' all'interno di un metodo di classe in Java?", "Riferimento all'istanza corrente dell'oggetto", "Alias per la classe", "Riferimento alla classe", 8),
("Qual è lo scopo del costruttore di una classe in Java?", "Inizializzare gli attributi dell'oggetto", "Distruggere l'oggetto", "Modificare la classe stessa", 8),
("Come si accede a un membro di istanza all'interno della stessa classe in Java?", "this.nomeMembro;", "nomeMembro;", "self.nomeMembro;", 8),
("Quale tra i seguenti è un esempio di ereditarietà in Java?", "class Figlio extends Genitore", "class Figlio implements Genitore", "class Genitore inherits Figlio", 8);

-- Quiz Vero/Falso sul capitolo "Oggetti e Classi" in Java (Capitolo ID: 8)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, ogni classe deve avere almeno un costruttore?", TRUE, 8),
("Gli oggetti in Java possono essere creati solo in fase di esecuzione?", FALSE, 8),
("La parola chiave 'new' in Java viene utilizzata solo per la creazione di array?", FALSE, 8),
("Una classe può contenere più di un costruttore in Java?", TRUE, 8),
("In Java, è possibile accedere direttamente a un membro privato di un'altra classe?", FALSE, 8);

-- Quiz multiplo sull'argomento "Ereditarietà" in Java (Capitolo ID: 9)

-- Quiz multiplo sull'argomento "Ereditarietà" in Java (Capitolo ID: 9)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è il concetto chiave dell'ereditarietà in programmazione orientata agli oggetti?", "Permette la creazione di nuove classi basate su classi esistenti", "Introduce il polimorfismo", "Riduce la complessità del codice", 9),
("Come si dichiara una classe figlia che estende una classe genitore in Java?", "class Figlia extends Genitore", "class Figlia implements Genitore", "class Genitore inherits Figlia", 9),
("Cosa rappresenta il termine 'super' in Java quando si tratta di ereditarietà?", "Riferimento alla classe genitore", "Alias per la classe figlia", "Chiamata a un metodo statico", 9),
("Quando si utilizza l'ereditarietà, cosa eredita una classe figlia dalla sua classe genitore?", "Attributi e metodi pubblici e protetti", "Solo metodi privati", "Solo attributi privati", 9),
("In Java, è possibile estendere più di una classe?", "No, Java supporta solo l'ereditarietà singola", "Sì, Java supporta l'ereditarietà multipla", "Solo se si utilizza l'interfaccia", 9);

-- Quiz Vero/Falso sul capitolo "Ereditarietà" in Java (Capitolo ID: 9)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("Una classe astratta può avere almeno un metodo astratto in Java?", TRUE, 9),
("L'ereditarietà favorisce la riusabilità del codice in Java?", TRUE, 9),
("In Java, la classe figlia può nascondere un metodo della classe genitore?", TRUE, 9),
("La parola chiave 'super' in Java è utilizzata per chiamare un metodo dell'oggetto corrente?", FALSE, 9),
("In Java, una sottoclasse può accedere ai membri privati della superclasse?", FALSE, 9);

-- Quiz multiplo sul capitolo "Polimorfismo" in Java (Capitolo ID: 10)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è il concetto chiave del polimorfismo in Java?", "Capacità di una classe di apparire sotto forma di più tipi", "Uso di più classi con lo stesso nome", "Copiatura di codice tra classi", 10),
("Come si implementa il polimorfismo attraverso i metodi in Java?", "Sovrascrittura dei metodi nella sottoclasse", "Definizione di metodi statici", "Utilizzo di metodi finali", 10),
("In Java, cos'è il polimorfismo ad hoc?", "Polimorfismo basato su operatori", "Polimorfismo basato su oggetti", "Polimorfismo basato su classi", 10),
("Qual è il risultato della conversione implicita in Java?", "L'oggetto può essere trattato come un'istanza della classe superiore", "Si verifica un errore di compilazione", "L'oggetto viene eliminato", 10),
("Qual è il termine corretto per riferirsi a un oggetto che può assumere più di un tipo?", "Oggetto polimorfico", "Oggetto statico", "Oggetto singolo", 10);

-- Quiz Vero/Falso sul capitolo "Polimorfismo" in Java (Capitolo ID: 10)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("Il polimorfismo consente di scrivere codice che può lavorare su oggetti di più tipi?", TRUE, 10),
("In Java, il polimorfismo è implementato solo attraverso l'ereditarietà?", FALSE, 10),
("Il polimorfismo può rendere il codice più flessibile e estendibile in Java?", TRUE, 10),
("In Java, il polimorfismo consente a una classe di ereditare da più classi?", FALSE, 10),
("La parola chiave 'extends' in Java è utilizzata per implementare il polimorfismo?", FALSE, 10);

-- Quiz multiplo sul capitolo "Gestione delle eccezioni" in Java (Capitolo ID: 11)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Cosa rappresenta 'try-catch' in Java?", "Blocchi utilizzati per gestire eccezioni", "Blocchi per la dichiarazione di variabili", "Blocchi per la definizione di classi", 11),
("Quando si verifica un'eccezione in Java, quale blocco viene eseguito dopo 'try'?", "catch", "finally", "else", 11),
("In Java, cosa rappresenta 'finally' all'interno di un blocco 'try-catch'?", "Blocchi di codice eseguiti sempre, indipendentemente dall'eccezione", "Blocchi di codice eseguiti solo se un'eccezione è lanciata", "Blocchi di codice eseguiti solo se nessuna eccezione è lanciata", 11),
("Quale delle seguenti eccezioni in Java è una sottoclasse di 'RuntimeException'?", "NullPointerException", "IOException", "ClassNotFoundException", 11),
("Cosa rappresenta 'throw' in Java?", "Lancia un'eccezione manualmente", "Gestisce un'eccezione", "Definisce un'eccezione", 11);

-- Quiz Vero/Falso sul capitolo "Gestione delle eccezioni" in Java (Capitolo ID: 11)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, una classe che gestisce eccezioni deve estendere la classe 'Exception'?", FALSE, 11),
("Il blocco 'finally' in una gestione delle eccezioni viene sempre eseguito?", TRUE, 11),
("In Java, un blocco 'catch' può gestire più di un tipo di eccezione?", TRUE, 11),
("L'uso eccessivo di blocchi 'try-catch' è considerato una buona pratica di programmazione?", FALSE, 11),
("In Java, le eccezioni controllate devono essere gestite o dichiarate nella firma del metodo?", TRUE, 11);

-- Quiz multiplo sul capitolo "File I/O" in Java (Capitolo ID: 12)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è il modo corretto di leggere da un file in Java utilizzando FileReader?", "BufferedReader reader = new BufferedReader(new FileReader('file.txt'));", "FileReader reader = new FileReader('file.txt');", "BufferedWriter writer = new BufferedWriter(new FileWriter('file.txt'));", 12),
("Cosa rappresenta 'IOException' in Java?", "Eccezione di input/output generica", "Errore di conversione di tipo", "Eccezione di divisione per zero", 12),
("In Java, quale classe è utilizzata per scrivere su un file?", "FileWriter", "FileReader", "PrintWriter", 12),
("Qual è il vantaggio dell'utilizzo di blocchi 'try-with-resources' per la gestione delle risorse in Java?", "Automatizzano la chiusura delle risorse", "Semplificano la sintassi del codice", "Riducono la complessità del codice", 12),
("Come si verifica se un file esiste in Java?", "File file = new File('file.txt'); file.exists();", "file.exists('file.txt');", "file.isExist();", 12);

-- Quiz Vero/Falso sul capitolo "File I/O" in Java (Capitolo ID: 12)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, la lettura da un file con FileReader lancia un'eccezione di tipo 'FileNotFoundException' se il file non esiste?", TRUE, 12),
("L'utilizzo di 'BufferedReader' in Java migliora le prestazioni nella lettura da un file?", TRUE, 12),
("In Java, l'eccezione 'IOException' si verifica solo durante la scrittura su file?", FALSE, 12),
("Il metodo 'write()' della classe 'FileWriter' in Java può essere utilizzato per scrivere una nuova linea in un file?", FALSE, 12),
("In Java, l'uso di 'try-with-resources' è obbligatorio per la gestione delle risorse?", FALSE, 12);

-- Quiz multiplo sul capitolo "Thread" in Java (Capitolo ID: 13)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Quale interfaccia in Java è utilizzata per implementare thread?", "Runnable", "Threadable", "Executable", 13),
("Cosa succede se si chiama il metodo 'start()' su un oggetto 'Thread' in Java?", "Il nuovo thread entra nello stato di esecuzione", "Il thread corrente entra in uno stato di attesa", "Viene terminato il thread corrente", 13),
("In Java, quale metodo viene chiamato automaticamente quando un thread entra nello stato di esecuzione?", "run()", "start()", "execute()", 13),
("Qual è lo scopo del metodo 'join()' in Java?", "Aspetta che il thread su cui è chiamato finisca la sua esecuzione", "Mette il thread in attesa indefinita", "Termina immediatamente il thread corrente", 13),
("In Java, cosa rappresenta un deadlock in un contesto di thread?", "Stallo causato dall'attesa reciproca di risorse", "Fermo causato da un errore di programmazione", "Rallentamento causato dalla concorrenza", 13);

-- Quiz Vero/Falso sull'argomento "Thread" in Java (Capitolo ID: 13)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("I thread in Java rappresentano la più piccola unità di esecuzione?", TRUE, 13),
("Un thread può eseguire più attività contemporaneamente in un singolo processo Java?", FALSE, 13),
("Il metodo 'sleep()' può essere utilizzato per mettere in pausa l'esecuzione di un thread per un periodo di tempo specificato?", TRUE, 13),
("I thread in Java condividono lo stesso spazio di memoria e risorse?", TRUE, 13),
("Il deadlock è una situazione in cui due o più thread sono bloccati indefinitamente, aspettando reciprocamente la liberazione delle risorse?", TRUE, 13);

-- Quiz multiplo sul capitolo "Collezioni" in Java (Capitolo ID: 14)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("La classe 'ArrayList' in Java implementa l'interfaccia 'Set'?", "FALSE", "TRUE", "NULL", 14),
("In Java, una 'LinkedList' è una collezione sincronizzata?", "FALSE", "TRUE", "NULL", 14),
("Il metodo 'containsKey()' in Java viene utilizzato per verificare se una chiave esiste in una mappa?", "TRUE", "FALSE", "NULL", 14),
("Una 'HashSet' in Java mantiene l'ordine di inserimento degli elementi?", "FALSE", "TRUE", "NULL", 14),
("La classe 'Vector' in Java è considerata obsoleta per l'uso nelle collezioni?", "TRUE", "FALSE", "NULL", 14);

-- Quiz Vero/Falso sul capitolo "Collezioni" in Java (Capitolo ID: 14)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, un oggetto 'HashMap' può contenere chiavi duplicate?", FALSE, 14),
("La classe 'TreeMap' in Java ordina automaticamente le chiavi in ordine crescente?", TRUE, 14),
("In Java, l'interfaccia 'List' è un'esempio di una collezione non ordinata?", FALSE, 14),
("La classe 'LinkedHashSet' in Java mantiene l'ordine di inserimento degli elementi?", TRUE, 14),
("In Java, il metodo 'remove()' della classe 'ArrayList' rimuove l'elemento in base alla posizione?", FALSE, 14);

-- Quiz multiplo sul capitolo "Interfacce" in Java (Capitolo ID: 15)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("In Java, una classe può implementare più di un'interfaccia?", "TRUE", "FALSE", "NULL", 15),
("Qual è il termine corretto per un'interfaccia con un solo metodo in Java?", "Interfaccia funzionale", "Interfaccia singola", "Interfaccia specifica", 15),
("Cosa rappresenta 'default' in un metodo di interfaccia in Java?", "Implementazione di default", "Valore predefinito del metodo", "Blocco di codice predefinito", 15),
("Un'interfaccia può estendere un'altra interfaccia in Java?", "TRUE", "FALSE", "NULL", 15),
("Cosa succede se una classe implementa un'interfaccia in Java ma non fornisce l'implementazione di tutti i suoi metodi?", "La classe deve essere dichiarata astratta", "Si verifica un errore di compilazione", "Il programma funziona correttamente", 15);

-- Quiz Vero/Falso sul capitolo "Interfacce" in Java (Capitolo ID: 15)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In Java, una classe può estendere più di una classe ma implementare una sola interfaccia?", TRUE, 15),
("In un'interfaccia in Java, tutti i metodi sono implicitamente 'public' e 'abstract'?", TRUE, 15),
("La parola chiave 'implements' in Java è utilizzata per estendere un'interfaccia?", FALSE, 15),
("In Java, un'interfaccia può contenere variabili di istanza?", FALSE, 15),
("Un'interfaccia in Java può ereditare da una classe?", FALSE, 15);

-- Quiz multiplo sul capitolo "Lambda Expressions" in Java (Capitolo ID: 16)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Le espressioni lambda in Java possono essere utilizzate solo con interfacce funzionali?", "FALSE", "TRUE", "NULL", 16),
("Una lambda expression in Java può avere più di un parametro?", "TRUE", "FALSE", "NULL", 16),
("L'operatore '->' è utilizzato per definire una lambda expression in Java?", "TRUE", "FALSE", "NULL", 16),
("Una lambda expression può accedere alle variabili locali esterne?", "TRUE", "FALSE", "NULL", 16),
("L'utilizzo delle lambda expressions in Java migliora la leggibilità del codice?", "TRUE", "FALSE", "NULL", 16);

-- Quiz Vero/Falso sul capitolo "Lambda Expressions" in Java (Capitolo ID: 16)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("Le espressioni lambda in Java sono obbligatorie per la programmazione funzionale?", FALSE, 16),
("In una lambda expression in Java, è possibile omettere la dichiarazione del tipo dei parametri?", TRUE, 16),
("Le lambda expressions in Java possono sostituire completamente le classi anonime?", TRUE, 16),
("Le lambda expressions in Java possono essere utilizzate solo con interfacce contenenti un solo metodo astratto?", FALSE, 16),
("Una lambda expression in Java può essere assegnata a una variabile di interfaccia funzionale?", TRUE, 16);

-- Quiz multiplo sul capitolo "JavaFX" in Java (Capitolo ID: 17)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("JavaFX è una piattaforma per sviluppare...", "Interfacce utente grafiche", "Applicazioni console", "Applicazioni di rete", 17),
("In JavaFX, quale componente rappresenta un'interfaccia utente utente?", "Scene", "Stage", "Node", 17),
("JavaFX è principalmente utilizzato per sviluppare applicazioni web?", "FALSE", "TRUE", "NULL", 17),
("FXML è un linguaggio di markup utilizzato in JavaFX per la definizione dell'interfaccia utente?", "TRUE", "FALSE", "NULL", 17),
("In JavaFX, quale componente rappresenta una finestra di applicazione?", "Stage", "Scene", "Node", 17);

-- Quiz Vero/Falso sull'argomento "JavaFX" in Java (Capitolo ID: 17)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("JavaFX è una piattaforma per lo sviluppo di applicazioni desktop in Java?", TRUE, 17),
("JavaFX è principalmente utilizzato per sviluppare applicazioni web?", FALSE, 17),
("FXML è un linguaggio di markup utilizzato in JavaFX per la definizione dell'interfaccia utente?", TRUE, 17),
("JavaFX è una sostituzione completa per la libreria Swing di Java?", FALSE, 17),
("In JavaFX, il componente 'Button' rappresenta un'area di testo?", FALSE, 17);


-- Quiz multiplo sul capitolo "Servlet" in Java (Capitolo ID: 18)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Le Servlet in Java sono utilizzate per sviluppare interfacce utente grafiche?", "FALSE", "TRUE", "NULL", 18),
("Le Servlet possono essere utilizzate per gestire richieste HTTP in applicazioni web?", "TRUE", "FALSE", "NULL", 18),
("Una Servlet in Java può essere creata estendendo la classe 'HttpServlet'?", "TRUE", "FALSE", "NULL", 18),
("Le Servlet in Java possono essere scritte in qualsiasi linguaggio di programmazione?", "FALSE", "TRUE", "NULL", 18),
("La configurazione di una Servlet in Java può essere definita nel file 'web.xml'?", "TRUE", "FALSE", "NULL", 18);

-- Quiz Vero/Falso sull'argomento "Servlet" in Java (Capitolo ID: 18)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("Le Servlet in Java sono utilizzate per sviluppare interfacce utente grafiche?", FALSE, 18),
("Le Servlet possono essere utilizzate per gestire richieste HTTP in applicazioni web?", TRUE, 18),
("Una Servlet in Java può essere creata estendendo la classe 'HttpServlet'?", TRUE, 18),
("Le Servlet in Java possono essere scritte in qualsiasi linguaggio di programmazione?", FALSE, 18),
("La configurazione di una Servlet in Java può essere definita nel file 'web.xml'?", TRUE, 18);

-- Quiz multiplo sul capitolo "JDBC" in Java (Capitolo ID: 19)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Qual è lo scopo di JDBC in Java?", "Fornire un'interfaccia per l'accesso al database", "Gestire interfacce utente grafiche", "Creare applicazioni web", 19),
("Quale oggetto in JDBC rappresenta una connessione al database?", "Connection", "ResultSet", "Statement", 19),
("In JDBC, cosa rappresenta un'istruzione SQL preparata?", "Un'istruzione SQL precompilata", "Un'istruzione SQL crittografata", "Un'istruzione SQL di sola lettura", 19),
("Cosa fa il metodo 'executeUpdate()' in JDBC?", "Esegue un'istruzione SQL di aggiornamento", "Esegue una query SQL", "Restituisce un risultato di query", 19),
("Quale interfaccia in JDBC è responsabile dell'esecuzione di query SQL?", "Statement", "ResultSet", "Connection", 19);

-- Quiz Vero/Falso sul capitolo "JDBC" in Java (Capitolo ID: 19)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("In JDBC, la classe 'DriverManager' è responsabile della gestione dei driver del database?", TRUE, 19),
("Un'eccezione 'SQLException' può verificarsi durante l'interazione con un database in JDBC?", TRUE, 19),
("In JDBC, il metodo 'executeQuery()' è utilizzato per eseguire aggiornamenti del database?", FALSE, 19),
("In JDBC, il metodo 'prepareStatement()' è utilizzato per eseguire istruzioni SQL preparate?", TRUE, 19),
("L'utilizzo di JDBC è limitato solo a database relazionali in Java?", FALSE, 19);

-- Quiz multiplo sul capitolo "Design Patterns" in Java (Capitolo ID: 20)

-- Quiz multiplo sull'argomento "Design Patterns" in Java (Capitolo ID: 20)

INSERT INTO quiz_multiplo (domanda, corretta, errore1, errore2, capitolo_id) VALUES 
("Cosa rappresenta il design pattern 'Singleton'?", "Assicura che una classe abbia una sola istanza e fornisce un punto di accesso globale", "Definisce una dipendenza uno a molti tra oggetti", "Introduce la creazione di oggetti casuali", 20),
("Qual è l'obiettivo del design pattern 'Observer'?", "Definisce una dipendenza uno a molti tra oggetti", "Assicura che una classe abbia una sola istanza", "Introduce la creazione di oggetti casuali", 20),
("Cosa definisce il design pattern 'Factory Method'?", "Definisce un'interfaccia per la creazione di un oggetto e lascia la scelta della sua classe alle sottoclassi", "Definisce una dipendenza uno a molti tra oggetti", "Introduce la creazione di oggetti casuali", 20),
("In cosa consiste il design pattern 'Strategy'?", "Definisce una famiglia di algoritmi e li rende intercambiabili", "Definisce una dipendenza uno a molti tra oggetti", "Assicura che una classe abbia una sola istanza", 20),
("Cosa rappresenta il design pattern 'Decorator'?", "Attacca in modo flessibile responsabilità aggiuntive a un oggetto", "Definisce una dipendenza uno a molti tra oggetti", "Introduce la creazione di oggetti casuali", 20);

-- Quiz Vero/Falso sull'argomento "Design Patterns" in Java (Capitolo ID: 20)

INSERT INTO quiz_vero_falso (domanda, bool, capitolo_id) VALUES 
("Il design pattern 'Singleton' permette la creazione di più istanze di una classe?", FALSE, 20),
("Il design pattern 'Observer' definisce una dipendenza uno a uno tra oggetti?", FALSE, 20),
("Il design pattern 'Factory Method' lascia la scelta della classe di un oggetto alle sottoclassi?", TRUE, 20),
("Il design pattern 'Strategy' permette di definire una famiglia di algoritmi e li rende intercambiabili?", TRUE, 20),
("Il design pattern 'Decorator' consente di attaccare in modo flessibile responsabilità aggiuntive a un oggetto?", TRUE, 20);

-- teoria introduzione a java (CAPITOLO 1)
insert into contenuto(contenuto, capitolo_id, tipo) values('Java: Un Linguaggio di Programmazione Versatile','1','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Scopo di Java','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','1','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java è un linguaggio di programmazione versatile progettato per essere utilizzato in una varietà di contesti. La sua caratteristica chiave è "write once, run anywhere", il che significa che il codice Java può essere eseguito su diverse piattaforme senza la necessità di riscriverlo.','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','1','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java Virtual Machine(JVM)','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La JVM è una componente fondamentale di Java. È una macchina virtuale che esegue il bytecode Java, garantendo la portabilità del codice. In altre parole, un programma Java può essere scritto una volta e poi eseguito su qualsiasi dispositivo che abbia una JVM.','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','1','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Applicazioni Java','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java è utilizzato per sviluppare una vasta gamma di applicazioni, inclusi sistemi distribuiti, applicazioni per dispositivi mobili e applet web. La sua capacità di fornire applicazioni cross-platform è particolarmente vantaggiosa.','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','1','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Linguaggio Orientato agli Oggetti','1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values("Java è un linguaggio di programmazione orientato agli oggetti, il che significa che il codice è organizzato in classi e oggetti. Questo paradigma offre vantaggi come l'incapsulamento (nascondere i dettagli interni di una classe), l'ereditarietà (creazione di nuove classi basate su classi esistenti) e il polimorfismo (capacità di una classe di prendere molte forme).",'1','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/OOP.jpg','1','immagine');

-- Teoria Variabili in Java (CAPITOLO 2)
insert into contenuto(contenuto, capitolo_id, tipo) values('Variabili in Java','2','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','2','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/Variabili2.png','2','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','2','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Dichiarazione e Inizializzazione delle Variabili','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('In programmazione, le variabili sono come contenitori che consentono di memorizzare e manipolare dati. La dichiarazione di una variabile è il processo attraverso il quale si specifica il tipo di dato che essa può contenere. Ad esempio, è possibile dichiarare una variabile intera (int) per memorizzare numeri interi o una variabile di tipo stringa (String) per memorizzare testo.','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La dichiarazione, tuttavia, è solo la prima parte del processo. Dopo aver dichiarato una variabile, è possibile assegnarle un valore iniziale, un processo noto come inizializzazione. L''inizializzazione è fondamentale poiché attribuisce un valore iniziale alla variabile, consentendo il suo utilizzo nelle operazioni successive.','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','2','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Tipi di Dati in Java','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java è un linguaggio fortemente tipizzato, il che significa che ogni variabile deve essere associata a un tipo di dato specifico. I tipi di dati in Java sono suddivisi in due categorie principali: tipi di dati primitivi e tipi di dati di riferimento.','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('I tipi di dati primitivi includono int (per numeri interi), double (per numeri decimali), char (per caratteri) e boolean (per valori booleani). Al contrario, i tipi di dati di riferimento includono oggetti, array e altri tipi più complessi.','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La scelta del tipo di dato dipende dal tipo di valore che si intende memorizzare. Ad esempio, se si desidera memorizzare un punteggio numerico intero, si utilizza il tipo di dato int. Se si desidera memorizzare un testo, si utilizza il tipo di dato String.','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','2','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Esempi di Dichiarazione e Inizializzazione','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Vediamo alcuni esempi pratici di dichiarazione e inizializzazione di variabili in Java:','2','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('int numeroIntero;', '2', 'paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('double numeroDecimale = 3.14;', '2', 'paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('String testo = "Ciao, mondo!";', '2', 'paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Questi esempi mostrano variabili di diversi tipi: un numero intero, un numero decimale e una stringa di testo. Dopo aver dichiarato la variabile, è possibile assegnarle un valore specifico. Ad esempio, nella terza riga, la variabile "testo" viene inizializzata con la stringa "Ciao, mondo!".','2','paragrafo');

-- Teoria Operatori in Java (CAPITOLO 3)
insert into contenuto(contenuto, capitolo_id, tipo) values('Operatori in Java','3','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/operatori.jpg','3','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Operatori Aritmetici','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli operatori aritmetici sono utilizzati per eseguire operazioni matematiche tra variabili e costanti. Essi includono l''addizione (+), la sottrazione (-), la moltiplicazione (*), la divisione (/) e il modulo (%). Il modulo restituisce il resto di una divisione.','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Operatori di Incremento e Decremento','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli operatori di incremento (++) e decremento (--) sono utilizzati per aumentare o diminuire il valore di una variabile di uno. Possono essere utilizzati sia come prefisso (es. ++variabile) che come suffisso (es. variabile++).','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Operatori Relazionali','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli operatori relazionali confrontano due valori e restituiscono un valore booleano (vero o falso). Gli esempi includono == (uguale a), != (diverso da), < (minore di), > (maggiore di), <= (minore o uguale a) e >= (maggiore o uguale a).','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Operatori Logici','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli operatori logici eseguono operazioni logiche su valori booleani. Gli operatori logici principali sono && (AND logico), || (OR logico) e ! (NOT logico). Sono spesso utilizzati per combinare condizioni nelle istruzioni di controllo del flusso.','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Operatori di Assegnamento','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli operatori di assegnamento vengono utilizzati per assegnare valori a variabili. L''operatore di base è =, ma ci sono anche versioni abbreviate come +=, -=, *= e /= che combinano l''operazione di assegnamento con un''operazione aritmetica.','3','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','3','paragrafo');

-- Teoria Strutture di Controllo in Java (CAPITOLO 4)
insert into contenuto(contenuto, capitolo_id, tipo) values('Strutture di Controllo in Java','4','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le strutture di controllo permettono di gestire il flusso di esecuzione di un programma.','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Strutture Condizionali','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le strutture condizionali come if-else consentono di eseguire o saltare blocchi di codice in base a condizioni.','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Cicli in Java','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('I cicli, come for e while, permettono di ripetere l''esecuzione di blocchi di codice fino a quando una condizione è verificata.','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Switch-Case','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Lo statement switch-case gestisce più opzioni di esecuzione in base al valore di una variabile.','4','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','4','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_control_structures.png','4','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','4','spazio');


-- Teoria Array in Java (CAPITOLO 5)
insert into contenuto(contenuto, capitolo_id, tipo) values('Array in Java','5','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli array in Java sono strutture dati utilizzate per memorizzare collezioni di elementi dello stesso tipo. Ogni elemento in un array è accessibile tramite un indice numerico.','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','5','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Dichiarazione di un Array','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Per dichiarare un array in Java, specificare il tipo di dati degli elementi seguito da due parentesi quadre []. Ad esempio, per dichiarare un array di interi: int[] numeri;','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','5','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Inizializzazione di un Array','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli array possono essere inizializzati al momento della dichiarazione o successivamente. Ad esempio: int[] numeri = {1, 2, 3, 4, 5};','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','5','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Accesso agli Elementi dell''Array','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli elementi di un array sono accessibili utilizzando l''indice dell''array. Ricorda che gli indici iniziano da 0. Ad esempio: int primoElemento = numeri[0];','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','5','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Dimensioni degli Array','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli array possono avere una dimensione fissa o dinamica. La dimensione di un array può essere ottenuta utilizzando la proprietà length. Ad esempio: int lunghezzaArray = numeri.length;','5','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/array_example.png','5','immagine');

-- Teoria Stringhe in Java (CAPITOLO 6)
insert into contenuto(contenuto, capitolo_id, tipo) values('Stringhe in Java','6','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le stringhe in Java rappresentano sequenze di caratteri e svolgono un ruolo fondamentale nella manipolazione di testo all''interno di programmi. Esse sono oggetti immutabili, il che significa che una volta assegnato un valore a una stringa, tale valore non può essere modificato.','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Dichiarazione di una Stringa','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La dichiarazione di una stringa in Java avviene mediante il tipo di dato "String". Ad esempio: String nome = "Java"; Qui, la variabile "nome" contiene la stringa "Java".','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Concatenazione di Stringhe','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La concatenazione, o unione, di stringhe può essere eseguita attraverso l''operatore "+" o il metodo concat(). Questo processo consente di combinare due o più stringhe in una nuova stringa. Ad esempio: String greeting = "Ciao, " + nome;','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Lunghezza di una Stringa','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La lunghezza di una stringa è ottenuta attraverso il metodo length(). Questo restituisce il numero di caratteri presenti nella stringa. Ad esempio: int lunghezza = nome.length();','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Metodi Comuni delle Stringhe','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java offre una varietà di metodi per manipolare le stringhe. Alcuni esempi includono toUpperCase(), toLowerCase(), trim(), substring(), indexOf(), ecc. Questi metodi permettono di eseguire diverse operazioni su una stringa, come convertirla in maiuscolo, minuscolo, rimuovere spazi inutili, ottenere una sottostringa, trovare l''indice di un carattere, ecc.','6','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/string_methods.png','6','immagine');

-- Teoria Funzioni in Java (CAPITOLO 7)
insert into contenuto(contenuto, capitolo_id, tipo) values('Funzioni in Java','7','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le funzioni, o metodi, in Java sono blocchi di codice riutilizzabili che eseguono una specifica operazione. Esse svolgono un ruolo cruciale nella modularità e organizzazione del codice.','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','7','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Dichiarazione di una Funzione','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La dichiarazione di una funzione avviene specificando il tipo di ritorno, il nome della funzione e i parametri (se presenti). Ad esempio: int somma(int a, int b) { return a + b; }','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','7','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Chiamata di una Funzione','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le funzioni vengono chiamate utilizzando il loro nome seguito da parentesi tonde che contengono gli eventuali argomenti. Ad esempio: int risultato = somma(3, 5);','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','7','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Ricorsione','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La ricorsione è una tecnica in cui una funzione si chiama da sola. È spesso utilizzata per risolvere problemi che possono essere suddivisi in sottoproblemi più piccoli. Ad esempio: int fattoriale(int n) { return (n == 0 || n == 1) ? 1 : n * fattoriale(n - 1); }','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','7','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('Overloading di Funzioni','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java supporta l''overloading, che consente di definire più funzioni con lo stesso nome ma con differenti parametri. La scelta della funzione corretta avviene in base al numero e al tipo di parametri forniti. Ad esempio: int somma(int a, int b) { return a + b; } double somma(double a, double b) { return a + b; }','7','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_functions.png','7','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','7','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('','7','spazio');

-- Teoria Oggetti e Classi in Java (CAPITOLO 8)
insert into contenuto(contenuto, capitolo_id, tipo) values('Oggetti e Classi in Java','8','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('In Java, il paradigma di programmazione orientato agli oggetti è ampiamente utilizzato. Questo capitolo esplora il concetto di oggetti e classi, fondamentali per la struttura del linguaggio.','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Definizione di Classe','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Una classe è un modello o un prototipo da cui vengono creati gli oggetti. Definire una classe significa specificare i dati che essa conterrà e i metodi attraverso i quali opererà su quei dati.','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Creazione di un Oggetto','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli oggetti sono istanze di una classe. La creazione di un oggetto avviene attraverso la parola chiave "new". Ad esempio: MyClass oggetto = new MyClass();','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Attributi e Metodi','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gli attributi di una classe rappresentano le caratteristiche degli oggetti creati dalla classe, mentre i metodi sono le operazioni che gli oggetti possono eseguire.','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Incapsulamento','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''incapsulamento è il concetto di nascondere i dettagli interni di una classe e mostrare solo ciò che è necessario all''esterno. Ciò è realizzato dichiarando gli attributi della classe come privati e fornendo metodi pubblici per accedervi.','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Costruttori','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('I costruttori sono metodi speciali chiamati durante la creazione di un oggetto. Essi consentono di inizializzare gli attributi dell''oggetto. Ad esempio: public MyClass() { /* codice del costruttore */ }','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Ereditarietà','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''ereditarietà consente la creazione di nuove classi basate su classi esistenti. Una classe figlia eredita gli attributi e i metodi della classe genitore. Ad esempio: class Figlia extends Genitore { /* corpo della classe figlia */ }','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Polimorfismo','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Il polimorfismo consente a un oggetto di essere trattato come un oggetto di una classe genitore. Ciò offre flessibilità e riutilizzo del codice. Ad esempio: Genitore oggetto = new Figlia();','8','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_objects_classes.png','8','immagine');

-- Teoria Ereditarietà in Java (CAPITOLO 9)
insert into contenuto(contenuto, capitolo_id, tipo) values('Ereditarietà in Java','9','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''ereditarietà è un concetto fondamentale nella programmazione orientata agli oggetti (OOP). In Java, una classe può ereditare attributi e metodi da un''altra classe.','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Utilizzo Principale','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''ereditarietà in Java permette la creazione di nuove classi basate su classi esistenti. Ciò promuove la riusabilità del codice e la strutturazione gerarchica delle classi.','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Dichiarazione di una Classe Figlia','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Per dichiarare una classe figlia che estende una classe genitore in Java, si utilizza la sintassi: `class Figlia extends Genitore`.','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gerarchia di Classi','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''ereditarietà in Java supporta la creazione di una gerarchia di classi. Le classi possono essere organizzate in una struttura ad albero, con una classe padre e una o più classi figlie.','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Caratteristiche','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Una classe astratta in Java può essere istanziata direttamente? No, una classe astratta non può essere istanziata direttamente. Serve come modello per altre classi ma non può essere utilizzata per creare oggetti.','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Una classe può estendere più di una classe in Java? No, Java supporta l''ereditarietà singola, il che significa che una classe può estendere al massimo una classe.','9','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','9','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_inheritance.png','9','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','9','spazio');

-- Teoria Polimorfismo in Java (CAPITOLO 10)
insert into contenuto(contenuto, capitolo_id, tipo) values('Polimorfismo in Java','10','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Il Polimorfismo è un concetto chiave della programmazione orientata agli oggetti (OOP) che permette a un oggetto di apparire in molte forme.','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Tipi di Polimorfismo','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java supporta due tipi principali di polimorfismo: polimorfismo di compilazione (o polimorfismo statico) e polimorfismo di esecuzione (o polimorfismo dinamico).','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Polimorfismo di Compilazione','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Il polimorfismo di compilazione si riferisce alla possibilità di utilizzare vari metodi con lo stesso nome, ma con firme diverse.','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Polimorfismo di Esecuzione','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Il polimorfismo di esecuzione si verifica quando un oggetto può assumere molte forme durante l''esecuzione del programma. È strettamente legato all''ereditarietà e alle interfacce.','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Vantaggi del Polimorfismo','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Il polimorfismo favorisce una progettazione flessibile e scalabile del software, migliorando la manutenibilità e la leggibilità del codice.','10','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','10','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_polymorphism.png','10','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','10','spazio');

-- Teoria Gestione delle Eccezioni in Java (CAPITOLO 11)
insert into contenuto(contenuto, capitolo_id, tipo) values('Gestione delle Eccezioni in Java','11','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le eccezioni sono situazioni anomale o errori che si verificano durante l''esecuzione di un programma. La gestione corretta delle eccezioni è fondamentale per garantire la stabilità e la robustezza del software.','11','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Tipi di Eccezioni','11','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('In Java, le eccezioni sono suddivise in due categorie principali: eccezioni verificate (checked) e eccezioni non verificate (unchecked).','11','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gestione delle Eccezioni in Java','11','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La gestione delle eccezioni in Java coinvolge l''uso di blocchi try, catch e finally. Questi blocchi consentono di identificare, gestire e, se necessario, rilanciare le eccezioni.','11','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','11','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_exceptions.png','11','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','11','spazio');

-- Teoria File I/O in Java (CAPITOLO 12)
insert into contenuto(contenuto, capitolo_id, tipo) values('File I/O in Java','12','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''Input/Output di file è un aspetto fondamentale della programmazione che coinvolge la lettura e la scrittura di dati da e verso file.','12','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Classi Fondamentali','12','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java fornisce molte classi per la gestione del file I/O, tra cui FileReader, FileWriter, BufferedReader, BufferedWriter e molte altre.','12','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gestione delle Eccezioni in File I/O','12','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La gestione delle eccezioni è particolarmente importante quando si lavora con file, poiché possono verificarsi errori durante la lettura o la scrittura.','12','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','12','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_file_io.png','12','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','12','spazio');

-- Teoria Thread in Java (CAPITOLO 13)
insert into contenuto(contenuto, capitolo_id, tipo) values('Thread in Java','13','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('I thread sono uno degli aspetti chiave della programmazione concorrente in Java. Un thread è un sottoprogramma indipendente che esegue operazioni in modo simultaneo ad altri thread.','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Creazione di Thread','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('In Java, ci sono due modi principali per creare un thread: estendendo la classe Thread o implementando l''interfaccia Runnable. La seconda opzione è preferibile in quanto Java supporta l''ereditarietà multipla di interfacce.','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Stati di un Thread','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Un thread può trovarsi in diversi stati, tra cui: nuovo, pronto, in esecuzione, sospeso e terminato. La gestione dello stato è fondamentale per garantire l''integrità e la correttezza del programma.','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Sincronizzazione','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('La sincronizzazione è cruciale quando più thread accedono e modificano le risorse condivise. Java fornisce parole chiave come synchronized per garantire un accesso sicuro.','13','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','13','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_threads.png','13','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','13','spazio');

-- Teoria Collezioni in Java (CAPITOLO 14) - Continuazione
insert into contenuto(contenuto, capitolo_id, tipo) values('Iterazione sulle Collezioni','14','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Per attraversare gli elementi di una collezione, è possibile utilizzare iteratori o nuovi costrutti introdotti in versioni più recenti di Java, come il foreach.','14','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Uso delle Collezioni','14','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le collezioni sono ampiamente utilizzate per implementare algoritmi di gestione dei dati, facilitando l''accesso, la ricerca e la modifica degli elementi.','14','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','14','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_collections.png','14','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','14','spazio');

-- Teoria Interfacce in Java (CAPITOLO 15)
insert into contenuto(contenuto, capitolo_id, tipo) values('Interfacce in Java','15','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Un''interfaccia in Java è una raccolta di metodi astratti. Fornisce un contratto che le classi implementatrici devono rispettare.','15','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Implementazione delle Interfacce','15','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Una classe può implementare più di un''interfaccia, consentendo la definizione di comportamenti specifici per ogni interfaccia.','15','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Utilizzo delle Interfacce','15','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le interfacce sono ampiamente utilizzate per raggruppare classi con comportamenti comuni, fornendo una maggiore flessibilità al codice.','15','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','15','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_interfaces.png','15','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','15','spazio');

-- Teoria Lambda Expressions in Java (CAPITOLO 16)
insert into contenuto(contenuto, capitolo_id, tipo) values('Lambda Expressions in Java','16','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le espressioni lambda sono una caratteristica introdotta in Java 8 che semplifica la scrittura di funzioni anonime.','16','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Sintassi delle Lambda Expressions','16','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le espressioni lambda seguono una sintassi compatta e consentono di implementare interfacce funzionali in modo più conciso.','16','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Utilizzo delle Lambda Expressions','16','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le lambda sono spesso utilizzate con le interfacce funzionali, rendendo il codice più chiaro e leggibile.','16','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','16','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_lambda.png','16','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','16','spazio');

-- Teoria JavaFX (CAPITOLO 17) - Continuazione
insert into contenuto(contenuto, capitolo_id, tipo) values('Struttura di un''Applicazione JavaFX','17','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le applicazioni JavaFX sono organizzate in stage, scene e nodi. Questa struttura offre flessibilità nella progettazione dell''interfaccia utente.','17','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Controlli e Layout','17','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('JavaFX offre una vasta gamma di controlli, come bottoni, caselle di testo e tabelle, oltre a layout personalizzabili.','17','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Stile e Aspetto','17','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('JavaFX consente di personalizzare lo stile delle applicazioni utilizzando fogli di stile CSS.','17','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','17','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_javafx.png','17','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','17','spazio');

-- Teoria Servlet in Java (CAPITOLO 18)
insert into contenuto(contenuto, capitolo_id, tipo) values('Servlet in Java','18','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le servlet sono componenti Java progettate per estendere le funzionalità dei server web.','18','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Ciclo di Vita di una Servlet','18','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Una servlet segue un ciclo di vita che include fasi come l''inizializzazione, il servizio delle richieste e la distruzione.','18','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Gestione delle Richieste','18','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le servlet gestiscono le richieste HTTP, elaborando i dati inviati dal client e restituendo risposte dinamiche.','18','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','18','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_servlet.png','18','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','18','spazio');

-- Teoria JDBC in Java (CAPITOLO 19)
insert into contenuto(contenuto, capitolo_id, tipo) values('JDBC in Java','19','titolo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java Database Connectivity (JDBC) è una API Java per l''interazione con database.','19','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Connessione al Database','19','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Le applicazioni Java possono connettersi a database utilizzando JDBC, consentendo l''esecuzione di query e la gestione dei risultati.','19','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Operazioni CRUD','19','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('JDBC facilita le operazioni CRUD (Create, Read, Update, Delete) sui dati memorizzati nei database.','19','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','19','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_jdbc.png','19','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','19','spazio');

-- Teoria Design Patterns in Java (CAPITOLO 20) - Continuazione
insert into contenuto(contenuto, capitolo_id, tipo) values('I design pattern sono soluzioni ricorrenti a problemi comuni nell''ambito della progettazione del software.','20','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Tipi di Design Patterns','20','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Java supporta diversi tipi di design pattern, come creazionali, strutturali e comportamentali.','20','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('Uso dei Design Patterns','20','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('L''uso appropriato dei design pattern può migliorare la qualità, la manutenibilità e la flessibilità del codice.','20','paragrafo');
insert into contenuto(contenuto, capitolo_id, tipo) values('','20','spazio');
insert into contenuto(contenuto, capitolo_id, tipo) values('img/java_design_patterns.png','20','immagine');
insert into contenuto(contenuto, capitolo_id, tipo) values('','20','spazio');
