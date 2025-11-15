# generador_dni.cr
Web=API for [generadordni.es](https://generadordni.es) which generates random but valid data for your tests

## Example
```cr
require "./generador_dni"

generador_dni = GeneradorDni.new
bank_account = generador_dni.generate_bank_account()
puts bank_account
```
