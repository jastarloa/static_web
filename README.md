# MongoDB Atlas

## Conceptos

* Un email por **cuenta** que ya no se podrá cambiar nunca (email de registro de esa cuenta).
* Concepto de **proyecto** para aislar diferentes entornos dentro de esa cuenta-
* Concepto de **clúster** dentro de un proyecto => indicamos proveedor cloud (AWS, Azure o Google). 
   * *Shared Tiers* => se permite uno gratis por proyecto que sea de la característica más baja; sólo accesible por Internet, aunque con encritación in-transit.
   * *Dedicated Tiers* => ninguno es gratis; varios tipos según características Hw y de red (pago por hora del cluster); son los únicos que permiten peering privado con el proveedor cloud si se desea; permite settings avanzados como backup continuo, sharding, elegir más regiones que los otros, elegir entre varias versiones minor de mongo 4.X, y algo muy interesante que es poder elegir multi-región y/o multiproveedor cloud. 
   * 
* Concepto de usuario => DUDAS: parece que 

## TODOs

* Modelo de red => ¿Firewall norte o firewall sur? Entendermos que siempre conexión privada.
* ¿Usuarios federados? ¿Cómo se hace esto sobre MongoAtlas (tanto interfaz web como interfaz mongo)?
    * Preguntar a Zimmerman cómo dan de alta cuenta Mongo (¿qué correo utilizan para crear la cuenta [ojo porque no se puede cambiar una vez creada]?, ¿cómo registran a los empleados con permisos?).

