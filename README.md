# MongoDB Atlas

## Conceptos

* Un email por **cuenta** que ya no se podrá cambiar nunca (email de registro de esa cuenta).
* Concepto de **organización**. A este nivel podrías configurar acceso federado (esto afectaría a la lista de usuarios con acceso al dashboard y los roles definidos en teams si los incluimos en equipos de esta cuenta Mongo atlas).
* Concepto de **proyecto** para aislar diferentes entornos dentro de esa cuenta-
* Concepto de **clúster** dentro de un proyecto => indicamos proveedor cloud (AWS, Azure o Google). 
   * *Shared Tiers* => se permite uno gratis por proyecto que sea de la característica más baja; sólo accesible por Internet, aunque con encritación in-transit.
   * *Dedicated Tiers* => ninguno es gratis; varios tipos según características Hw y de red (pago por hora del cluster); son los únicos que permiten peering privado con el proveedor cloud si se desea; permite settings avanzados como backup continuo, sharding, elegir más regiones que los otros, elegir entre varias versiones minor de mongo 4.X, claves encriptación at-rest (según proveedor cloud => AWS=KMS,Azure=KeyVault...) y algo muy interesante que es poder elegir multi-región y/o multiproveedor cloud. 
* Tipos de **usuarios**:
   * De Acceso al proyecto => deben ser otros usuarios, equipos o API Keys ya dados de alta en Mongo Atlas. Pueden ser agrupados en teams. A estos users y teams se les dan roles (Project Owner, Project Manager, Project Data Access Admin, Project Data Access Read/Write, Project Data Access Read Only, Project Read Only). Son diferentes de los ususarios de acceso puro a las BDs, aunque dependiendo del rol también podrán tener acceso a nivel datos en bases de datos.
   * De Acceso a la database => usando protocolo mongo y accedería a databases dentro del clúster. Se pueden crear de varios tipos: user+pwd (estándar SCRAM de autenticación), certificado 

## TODOs

* Modelo de red => ¿Firewall norte o firewall sur? Entendermos que siempre conexión privada.
* ¿Usuarios federados? ¿Cómo se hace esto sobre MongoAtlas (tanto interfaz web como interfaz mongo)?
    * Preguntar a Zimmerman cómo dan de alta cuenta Mongo (¿qué correo utilizan para crear la cuenta [ojo porque no se puede cambiar una vez creada]?, ¿cómo registran a los empleados con permisos?).

