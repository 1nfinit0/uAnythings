# Principios SOLID

Los principios **SOLID** son cinco reglas de diseño de software orientado a objetos que ayudan a crear sistemas más **mantenibles, flexibles y escalables**.

---

## 1. S — Single Responsibility Principle (SRP)
**Cada clase debe tener una sola responsabilidad.**
- Una clase debe tener **una sola razón para cambiar**.
- Evita que una clase haga demasiadas cosas.

👉 Ejemplo:  
Una clase que solo maneja la lógica de facturación, y otra distinta que guarda los datos en la base.

---

## 2. O — Open/Closed Principle (OCP)
**El código debe estar abierto a extensión, pero cerrado a modificación.**
- Puedes **extender** el comportamiento de una clase sin tener que **modificar** su código original.
- Se logra usando herencia, interfaces o composición.

👉 Ejemplo:  
Agregar un nuevo tipo de reporte sin cambiar la clase `ReportGenerator`, solo creando una nueva implementación.

---

## 3. L — Liskov Substitution Principle (LSP)
**Las clases hijas deben poder reemplazar a sus padres sin romper el programa.**
- Si una clase hereda de otra, debe comportarse como la clase padre.
- No debe alterar las expectativas del código que usa la clase base.

👉 Ejemplo:  
Si `Bird` tiene un método `fly()`, una subclase `Penguin` no debería heredar de `Bird` si no puede volar.

---

## 4. I — Interface Segregation Principle (ISP)
**Las interfaces deben ser específicas, no gigantes.**
- Es mejor tener varias interfaces pequeñas que una muy grande.
- Los clientes no deben implementar métodos que no usan.

👉 Ejemplo:  
En lugar de una interfaz `IMachine` con `print()`, `scan()`, `fax()`, crear interfaces separadas: `IPrinter`, `IScanner`, `IFax`.

---

## 5. D — Dependency Inversion Principle (DIP)
**Los módulos de alto nivel no deben depender de módulos de bajo nivel, ambos deben depender de abstracciones.**
- Se programa contra **interfaces**, no contra implementaciones concretas.
- Facilita el cambio y las pruebas.

👉 Ejemplo:  
Un controlador de notificaciones depende de una interfaz `MessageService`, no directamente de `EmailService`.

---

# 🎯 Idea clave
- **SRP:** Una clase, una responsabilidad.  
- **OCP:** Extiende sin modificar.  
- **LSP:** Sustituye sin romper.  
- **ISP:** Interfaces pequeñas y específicas.  
- **DIP:** Depender de abstracciones, no de detalles.  

Juntos forman el acrónimo **SOLID**, que guía hacia un diseño limpio y mantenible.
