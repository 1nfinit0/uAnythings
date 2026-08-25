package ejercicio4;
import ejercicio4.*;

public class Creador implements USubir, UEspectar, UReproducir, UComentar {
  @Override
  public void subir() {
    System.out.println("Puedo subir");
  }

  @Override
  public void espectar() {
    System.out.println("Puedo espectar");
  }

  @Override
  public void reproducir() {
    System.out.println("Puedo reproducir");
  }

  @Override
  public void comentar() {
    System.out.println("Puedo comentar");
  }
}
