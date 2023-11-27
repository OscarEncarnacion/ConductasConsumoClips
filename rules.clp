(defrule MAIN::iphone15-banamex-meses
   (cliente (id-cliente ?idCliente) (nombre ?nombreCliente))
   (orden (id-orden ?idOrden) (id-cliente ?idCliente) (id-tarjeta ?idTarjeta))
   (smartphone (id-producto ?idProducto) (marca "Apple") (modelo "Iphone 15"))
   (linea-producto (id-orden ?idOrden) (id-producto ?idProducto))
   (tarjeta (id-tarjeta ?idTarjeta) (banco "Banamex"))
   =>
   (printout t "Ofrecer compra a 24 meses sin intereses al cliente " ?nombreCliente crlf crlf))

(defrule MAIN::samsungNote12-liverpoolVisa-meses
   (cliente (id-cliente ?idCliente) (nombre ?nombreCliente))
   (orden (id-orden ?idOrden) (id-cliente ?idCliente) (id-tarjeta ?idTarjeta))
   (smartphone (id-producto ?idProducto) (marca "Samsung") (modelo "Note 12"))
   (linea-producto (id-orden ?idOrden) (id-producto ?idProducto))
   (tarjeta (id-tarjeta ?idTarjeta) (banco "Liverpool") (grupo "VISA"))
   =>
   (printout t "Ofrecer compra a 12 meses sin intereses al cliente " ?nombreCliente crlf crlf))

(defrule MAIN::macbookAir-iphone15-contado
   (cliente (id-cliente ?idCliente) (nombre ?nombreCliente))
   (orden (id-orden ?idOrden) (id-cliente ?idCliente))
   (smartphone (id-producto ?idProductoIphone) (marca "Apple") (modelo "Iphone 15") (precio ?precioIphone))
   (linea-producto (id-orden ?idOrden) (id-producto ?idProductoIphone))
   (computadora (id-producto ?idProductoMacbook) (marca "Apple") (modelo "MacBook Air") (precio ?precioMacbook))
   (linea-producto (id-orden ?idOrden) (id-producto ?idProductoMacbook))
   (venta (id-orden ?idOrden) (forma-pago 1))
   =>
   (bind ?cantidadVales (* 100 (/ (+ ?precioIphone ?precioMacbook) 1000)))
   (assert (vales (id-cliente ?idCliente) (cantidad ?cantidadVales)))
   (printout t "Se han cargado $" ?cantidadVales " a la cartera de vales del cliente " ?nombreCliente crlf crlf))

(defrule MAIN::funda-mica-smartphone
   (cliente (id-cliente ?idCliente) (nombre ?nombreCliente))
   (orden (id-orden ?idOrden) (id-cliente ?idCliente))
   (linea-producto (id-orden ?idOrden) (id-producto ?idProducto))
   (smartphone (id-producto ?idProducto))
   =>
   (printout t "Ofrecer funda y mica con un 15% de descuento al cliente " ?nombreCliente crlf crlf))

(defrule MAIN::segmentar-clientes-producto
   (













