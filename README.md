# Arquitectura-de-Software


# Guía de Configuración del Proyecto

## Configuración del Proyecto

### Requisitos Previos
- Instalar Dart SDK.
- Descargar e instalar un editor de texto compatible con Dart, como Visual Studio Code o IntelliJ IDEA con el plugin de Dart.


### Clonar el Repositorio
git clone https://github.com/DanielTolaba-Umss/Arquitectura-de-Software.git


### Importar el Proyecto
1. Abre Visual Studio Code
2. Selecciona "Open" desde el menú principal.
3. Navega hasta la ubicación donde clonaste el repositorio y selecciona la carpeta del proyecto.
4. Haz clic en "Open" para importar el proyecto a Visual Studio Code.

### Asegurate de tener instalada la extensión para dart

### Ejecutar el Proyecto
1. Abre el proyecto en Visual Studio Code.
2. Localiza el archivo `main.dart` en la estructura del proyecto.
3. Habre una terminal dando click derecho en el archivo  `main.dart`.
4. en la terminal ejecuta el comando `dart main.dart`.

## Principios SOLID Aplicados

### Single Responsibility Principle (SRP)
- Cada clase en el proyecto tiene una única responsabilidad específica. Por ejemplo, la clase `TaskRepositoryImpl` se encarga únicamente de gestionar el acceso a los datos de las tareas.

### Open/Closed Principle (OCP)
- El principio OCP se aplica utilizando interfaces para definir comportamientos y extensiones para añadir nuevas funcionalidades sin modificar el código existente.
- Por ejemplo, la interfaz `TaskService` define métodos para operaciones relacionadas con las tareas, y la clase `TaskServiceImpl` implementa estos métodos sin necesidad de modificar la interfaz.

### Liskov Substitution Principle (LSP)
- El principio LSP se cumple mediante el uso de interfaces que son implementadas por clases específicas.
-  Por ejemplo, la interfaz `TaskService` es implementada por la clase `TaskServiceImpl`.

### Interface Segregation Principle (ISP)
- Se crean interfaces específicas para cada funcionalidad. Por ejemplo, la interfaz `TaskObserver` define métodos para observar eventos relacionados con las tareas, y esta interfaz se implementa en la clase `LoggingTaskObserver`.

### Dependency Inversion Principle (DIP)
- Las clases de alto nivel dependen de abstracciones en lugar de clases concretas.
- Por ejemplo, la clase `TaskServiceImpl` depende de la interfaz `TaskRepository` en lugar de depender directamente de la clase `TaskRepositoryImpl`.

## Patrones de Diseño Utilizados

### Singleton
- El patrón Singleton se utiliza en la clase `TaskRepositoryImpl` para garantizar que solo haya una instancia de la clase en toda la aplicación.

### Facade
- El patrón Facade se aplica en la clase `TaskFacade`, que proporciona una interfaz simplificada para acceder a las funcionalidades de gestión de tareas.

### Observer
- El patrón Observer se emplea en la clase `TaskServiceImpl` para permitir que objetos interesados (observadores) sean notificados cuando se agregan nuevas tareas.
- La interfaz `TaskObserver` define el método `onTaskAdded`, que se implementa en la clase `LoggingTaskObserver` para registrar la adición de tareas en el registro.


## Arquitectura de Tres Capas

El proyecto sigue una arquitectura de tres capas, que consiste en:

1. **Capa de Presentación (presentation):** Esta capa se encarga de la interacción con el usuario y contiene las clases relacionadas con la interfaz de usuario, como `TaskUI`, `MenuController` y `UserInteraction`.
   
2. **Capa de Lógica de Negocio (business_logic):** Aquí se encuentra la lógica de negocio de la aplicación, como la gestión de tareas. Incluye clases como `Task` y `TaskService` .
   
3. **Capa de Acceso a Datos (data_access):** Esta capa gestiona la comunicación con la base de datos y contiene clases como `TaskRepository` y `TaskRepositoryImpl` para acceder y manipular los datos de las tareas.

## Contribuciones y Soporte

Si deseas contribuir al proyecto o tienes alguna pregunta, no dudes en abrir un issue o enviar una solicitud de pull request en el repositorio de GitHub. Estamos aquí para ayudar y mejorar juntos este proyecto.

---
© 2024 - Todos los derechos reservados. Desarrollado por [Tolaba Daniel].
