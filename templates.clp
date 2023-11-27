(deftemplate MAIN::cliente
   (slot id-cliente (type INTEGER))
   (multislot nombre (type STRING))
   (multislot direccion (type STRING))
   (slot telefono (type STRING)))

(deftemplate MAIN::orden
   (slot id-orden (type INTEGER))
   (slot id-cliente (type INTEGER))
   (slot id-tarjeta (type INTEGER)))

;; forma pago 1=contado, 2=meses sin intereses
(deftemplate MAIN::venta
   (slot id-venta (type INTEGER))
   (slot id-orden (type INTEGER))
   (slot forma-pago (type INTEGER)))

(deftemplate MAIN::tarjeta
   (slot id-tarjeta (type INTEGER))
   (slot id-cliente (type INTEGER))
   (slot banco (type STRING))
   (slot grupo (type STRING))
   (slot fecha-expiracion (type STRING)))

(deftemplate MAIN::vales
   (slot id-cliente (type INTEGER))
   (slot cantidad (type FLOAT)))

(deftemplate MAIN::linea-producto
   (slot id-orden (type INTEGER))
   (slot id-producto (type INTEGER))
   (slot cantidad (type INTEGER) (default 1)))

(deftemplate MAIN::smartphone
   (slot id-producto (type INTEGER))
   (slot marca (type STRING))
   (multislot modelo (type STRING))
   (slot precio (type FLOAT)))

(deftemplate MAIN::computadora
   (slot id-producto (type INTEGER))
   (slot marca (type STRING))
   (multislot modelo (type STRING))
   (slot precio (type FLOAT)))

(deftemplate MAIN::accesorio
   (slot id-producto (type INTEGER))
   (slot nombre (type STRING))
   (slot precio (type FLOAT)))

