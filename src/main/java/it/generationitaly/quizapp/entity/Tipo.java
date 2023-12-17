package it.generationitaly.quizapp.entity;

public enum Tipo {

	spazio("spazio"),paragrafo("paragrafo"),titolo("titolo"),immagine("immagine");
	
	private String value;
	
	private Tipo(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
	
}
