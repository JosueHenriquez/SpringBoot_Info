# 📌 Métodos HTTP: "Los Verbos de la Web"
Los métodos HTTP son acciones que usamos para interactuar con servidores web (como leer, enviar o borrar datos). Son como los "verbos" que dicen qué queremos hacer con una página o recurso.

## 🔹 Los 5 Métodos Más Importantes:

*GET ➝ "Obtener datos"*
¿Qué hace? Solicita información (como cargar una página web o ver fotos).
Ejemplo:
GET /productos → El servidor devuelve una lista de productos.  
Analogía: Como pedir un menú en un restaurante.

*POST ➝ "Enviar datos"*
¿Qué hace? Envía datos al servidor (ej: formularios, registros).
Ejemplo:
POST /registro {nombre: "Juan", email: "juan@ejemplo.com"} → Crea un nuevo usuario.  
Analogía: Como enviar una carta con tus datos para suscribirte a una revista.

*PUT ➝ "Actualizar completamente"*
¿Qué hace? Reemplaza todos los datos de un recurso.
Ejemplo:
PUT /perfil/123 {nombre: "Juan Pérez"} → Cambia **todo** el perfil del usuario 123.  
Analogía: Como reescribir toda una ficha médica del paciente.

*PATCH ➝ "Actualizar parcialmente"*
¿Qué hace? Modifica solo una parte de un recurso.
Ejemplo:
PATCH /perfil/123 {email: "nuevo@email.com"} → Solo actualiza el email del usuario 123.  
Analogía: Como tachar y corregir solo un dato en un formulario.

*DELETE ➝ "Borrar datos"*
¿Qué hace? Elimina un recurso del servidor.
Ejemplo:
DELETE /productos/456 → Borra el producto con ID 456.  
Analogía: Como pedir que retiren un plato del menú del restaurante.

*📝 Ejemplo Práctico con Redes Sociales*
Imagina que estamos usando una app como Instagram:
* GET: Ver fotos (/fotos).
* POST: Subir una nueva foto (/fotos).
* PUT: Cambiar toda la descripción de una foto.
* PATCH: Corregir solo un typo en la descripción.
* DELETE: Borrar una foto.
