public class Main {
  public static void main(String[] args) {
    String[] habilidades = {"Ataque", "Defensa", "Magia"};
    Personaje personaje1 = new Personaje("Gandalf", "Mago", 100, habilidades);
    Personaje personaje2 = personaje1.clonar();

    System.out.println("Personaje 1: " + personaje1.getNombre() + ", Tipo: " + personaje1.getTipo() + ", Nivel: " + personaje1.getNivel());
    System.out.println("Personaje 2: " + personaje2.getNombre() + ", Tipo: " + personaje2.getTipo() + ", Nivel: " + personaje2.getNivel());

    personaje2.setNombre("Eddard");
    personaje2.setNivel(200);
    personaje2.setTipo("Caballero");

    System.out.println("Después de modificar el clonado:");
    System.out.println("Personaje 1: " + personaje1.getNombre() + ", Tipo: " + personaje1.getTipo() + ", Nivel: " + personaje1.getNivel());
    System.out.println("Personaje 2: " + personaje2.getNombre() + ", Tipo: " + personaje2.getTipo() + ", Nivel: " + personaje2.getNivel());
  }
}
