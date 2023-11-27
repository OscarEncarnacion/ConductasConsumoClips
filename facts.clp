(deffacts MAIN::clientes
   (cliente (id-cliente 1) (nombre "Alex") (direccion "Lirac #193") (telefono "3318048340"))
   (cliente (id-cliente 2) (nombre "Saul") (direccion "Roca #1234") (telefono "3318044562"))
   (cliente (id-cliente 3) (nombre "Octavio") (direccion "Artesanos #965") (telefono "3318044712"))
   (cliente (id-cliente 4) (nombre "Oscar") (direccion "Independencia #4232") (telefono "3318046595"))
   (cliente (id-cliente 5) (nombre "Edgar") (direccion "Salvador #521") (telefono "3318048521")))

(deffacts MAIN::smartphones
   (smartphone (id-producto 1) (marca "Apple") (modelo "Iphone 15") (precio 19499.0))
   (smartphone (id-producto 2) (marca "Samsung") (modelo "Note 12") (precio 6499.0))
   (smartphone (id-producto 3) (marca "Motorola") (modelo "Moto g84 5G") (precio 5999.0)))

(deffacts MAIN::computadoras
   (computadora (id-producto 1) (marca "Apple") (modelo "MacBook Air") (precio 16499.0))
   (computadora (id-producto 2) (marca "Dell") (modelo "Inspiron 3520") (precio 13817.0))
   (computadora (id-producto 3) (marca "HP") (modelo "Pavilion 15") (precio 10899.0)))

(deffacts MAIN::accesorios
   (accesorio (id-producto 1) (nombre "Mica") (precio 250.0))
   (accesorio (id-producto 2) (nombre "Funda") (precio 450.0)))

(deffacts MAIN::tarjetas
   (tarjeta (id-tarjeta 1) (id-cliente 1) (banco "Banamex") (grupo "Master Card") (fecha-expiracion "07/25"))
   (tarjeta (id-tarjeta 2) (id-cliente 3) (banco "Liverpool") (grupo "VISA") (fecha-expiracion "09/27"))
   (tarjeta (id-tarjeta 3) (id-cliente 2) (banco "BBVA") (grupo "VISA") (fecha-expiracion "11/24")))

(deffacts MAIN::ordenes
   (orden (id-orden 1) (id-cliente 1) (id-tarjeta 1))
   (orden (id-orden 2) (id-cliente 3) (id-tarjeta 2))
   (orden (id-orden 3) (id-cliente 2) (id-tarjeta 3)))

(deffacts MAIN::lineas-producto
   (linea-producto (id-orden 1) (id-producto 1) (cantidad 1))
   (linea-producto (id-orden 2) (id-producto 2) (cantidad 1))
   (linea-producto (id-orden 3) (id-producto 3) (cantidad 1)))

(deffacts MAIN::ventas
   (venta (id-venta 1) (id-orden 1) (forma-pago 1))
   (venta (id-venta 2) (id-orden 2) (forma-pago 1))
   (venta (id-venta 3) (id-orden 3) (forma-pago 1)))

