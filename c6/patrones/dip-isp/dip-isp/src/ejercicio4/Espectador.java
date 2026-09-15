package ejercicio4;
import ejercicio4.*;

public class Espectador implements UComentar, UEspectar, UReproducir {
  @Override
  public void comentar() {
    System.out.println("Puedo comentar");
  }

  @Override
  public void espectar() {
    System.out.println("Puedo espectar");
  }

  @Override
  public void reproducir() {
    System.out.println("Puedo reproducir");
  }
}
