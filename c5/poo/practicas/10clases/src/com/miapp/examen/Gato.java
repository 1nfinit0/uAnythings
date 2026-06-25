package src.com.miapp.examen;

public class Gato {

  private String raza;
  private String color;
  private String tamaño;
  

  public Gato(String raza, String color, String tamaño) {
    this.raza = raza;
    this.color = color;
    this.tamaño = tamaño;
  }

  public void maullar() {
    System.out.println("Soy el gato de raza: " + raza + " color: " + color + " y tamaño: " + tamaño);
  }

  public void alimentar() {
    if (!(tamaño == "Grande")) {
      System.out.println("Alimentando al gato con poca comida");
    }
    System.out.println("Alimentando al gato con mucha comida");
  }

  public void pasear() {
    if (raza == "Egipcia") {
      System.out.println("Sale a pasear dos veces al día");
    } if (raza == "Siames") {
      System.out.println("Sale a pasear tres veces al día");
    } else {
      System.out.println("Sale a pasear una veces al día");
    }
  }


}
