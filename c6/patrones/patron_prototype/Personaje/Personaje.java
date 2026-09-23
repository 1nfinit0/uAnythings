public class Personaje implements Cloneable {
    private String nombre;
    private String tipo;
    private int nivel;
    private String[] habilidades;

    public Personaje(String nombre, String tipo, int nivel, String[] habilidades) {
        this.nombre = nombre;
        this.tipo = tipo;
        this.nivel = nivel;
        this.habilidades = habilidades;
    }

    
    public Personaje clonar() {
        try {
            return (Personaje) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public String[] getHabilidades() {
        return habilidades;
    }

    public void setHabilidades(String[] habilidades) {
        this.habilidades = habilidades;
    }


}
