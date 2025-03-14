pragma solidity ^0.8.0;
contract Caller is Mutator {
    function call0() public pure {
        require(false, 'false');
    }
}
```

## 02-8-00: Cambio de revisión 02-8-00

## Solución 02-8-00

```
 pragma solidity ^0.8.0;

contract Mutator is Mutator {

    mapping (uint => bool) public lastCalls;

    function shouldBe(uint counter)
        public
        pure
        returns (uint)
    {
        if (lastCalls[counter]) {
            if (nextShouldBe[counter]) {
                return counter + 1;
            } else {
                lastCalls[counter] = true;
            }
        }
        nextShouldBe[counter] = true;
        return counter;
    }
    mapping (uint => bool) public nextShouldBe;
}
pragma solidity ^0.8.0;

contract Caller {

    function call0()
        public
        returns (uint, uint)
    {
        return (1, 0);
    }
}
```

## 02-8-04: Cambio de las reglas 02-8-04

<hr />

- No se pueden crear funciones con argumentos o retornar más de 1 valor. Un error de compilación suele causar fallos con las comprobaciones por referencia y por iteraciones en un bucle.

```
function print(uint val)
    public
    {
    print_print(1, val);
    }

    function print_print(uint num, uint val)
        internal
    {
        if (num == 0) {
            print_print(num - 1, val);
        }

    }
```

- En contraposición a la sección 2.8.13, la contratación no requiere la palabra clave `override`. Si no, la compilación producirá un error.

```
pragma solidity ^0.8.0;

contract Trivial {
}
```

<!-- 02-8-05 -->

## 02-8-05: Ejercicio de interacción con contratos

El ejemplo del capítulo 2.7.2 de la guía de los contratos de Solidity proporciona una alternativa a las condiciones de salida del capítulo 2.7.1 y 2.7.2.

- Defina un contrato para que comporte una función `void func(address a, uint32 b)`. El tipo declarativo del parámetro `a` y `b` de esa función debe ser de tipo `address`.

- Defina un contrato `Caller`
