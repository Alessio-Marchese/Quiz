package it.generationitaly.quizapp.entity;

public enum Tipo {

	SPAZIO("spazio"), PARAGRAFO("paragrafo"), TITOLO("titolo"), IMMAGINE("immagine");

	private String value;

	private Tipo(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

}
