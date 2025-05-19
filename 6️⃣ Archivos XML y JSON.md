# ¿Qué es un archivo XML?
La abreviatura XML significa "Lenguaje de Marcado Extensible" .  XML, similar a HTML, es un lenguaje de programación para estructurar y presentar datos en un  formato de texto formateado. Fue desarrollado originalmente para permitir el intercambio de datos independientemente de los sistemas operativos y lenguajes de programación.

Una característica clave de XML es que normalmente puede ser leído tanto por humanos como por máquinas. Por lo tanto, normalmente puedes crear, ver y editar archivos XML en programas de edición de texto simples. Por supuesto, también existen editores XML especiales que ofrecen funciones adicionales. Los archivos XML también se pueden guardar en otros formatos como .txt ,  .doc o .docx .

Un archivo XML es principalmente un formato de archivo que almacena información en forma de texto . Posteriormente estos pueden ser leídos y procesados por programas. Los archivos XML le brindan la posibilidad de almacenar una variedad de datos, incluidos archivos de configuración, contenido de bases de datos, contenido de páginas web, datos científicos y mucho más.

## Estructura y estructura de archivos XML
Los archivos XML siempre se basan en el mismo esquema. Todos los datos contenidos se insertan dentro de las llamadas "etiquetas". Para ello, deberás utilizar un día de apertura y un día de cierre, que simplemente definirás como tal mediante un corchete angular. El día de cierre también está marcado por una barra diagonal, que se coloca directamente después del primer corchete angular.

La jerarquía del documento XML sigue siempre el mismo principio. Todo archivo XML comienza siempre con la llamada declaración XML , que se encuentra en la primera línea del documento. El propósito de esto es clasificar el archivo como un archivo XML para otros programas. La información y atributos como la versión de XML o el juego de caracteres utilizado se insertan entre corchetes angulares. Por ejemplo, una declaración XML común podría verse así:

<?xml version ="1.0" encoding = "UTF-8"?>

A la declaración XML le sigue el elemento raíz , en el que se subdividen todos los demás elementos (etiquetas) e información. Si volvemos a tomar el ejemplo de la lista de clientes, el elemento raíz podría llamarse “<lista de clientes>”. Luego podría agregar cualquier otro elemento debajo, como <cliente>, <número de cliente> o <dirección> y estructurarlos en una estructura jerárquica. En un programa de edición de texto, dicha estructura podría verse así:

![image](https://github.com/user-attachments/assets/ad41a9d8-b79e-4681-9bd0-9b14427d00cb)

* [YouTube](Explicación de archivos XML: https://youtu.be/UfOmGwJ4dKM?si=HKuBI_OJMedHVJAj)

# Archivos JSON
Los archivos JSON (JavaScript Object Notation) son un formato de archivo ligero y muy utilizado para el intercambio de datos. Su estructura es fácil de leer tanto para humanos como para máquinas, y se basa en la notación de objetos de JavaScript, aunque es independiente de cualquier lenguaje de programación.

## Características principales:
* Formato de texto legible: Usa sintaxis basada en pares clave-valor y listas ordenadas.
* Extensión de archivo: .json.
* Estructura común:
* ![image](https://github.com/user-attachments/assets/c433e793-0b54-4cfc-be21-61428b8c2f31)

## Usos comunes:
* Intercambio de datos entre servidor y cliente (APIs web, como REST).
* Configuraciones de aplicaciones (ej: package.json en Node.js).
* Almacenamiento simple de datos estructurados.

