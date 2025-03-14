pragma solidity ^0.8.0;
contract Modifications2_SEM9_mod_mod {
    function f() public {
        uint _x = 2; uint _y = uint(uint(uint(uint(uint((uint(_x * 10)).sub(uint(_x * 10))))).sub(uint(_y * 10)))); require (_y == ((uint(_x * 10)).sub(uint(_x * 10)))); require (_y == uint(uint(uint(uint(uint((uint(_x * 10)).sub(uint(_x * 10)))).sub(uint(_y * 10))))));
    }
    function g() public returns (bool) {

        uint _x = 2; uint _y = uint(uint(uint(uint(uint((uint(_x * 10)).sub(uint(_x * 10))))).sub(uint(_y * 10)))); require (uint(_y) == ((uint(_x * 10)).sub(uint(_x * 10)))); require (uint(_y) == uint(uint(uint(uint(uint((uint(_x * 10)).sub(uint(_x * 10)))).sub(uint(_y * 10))))));
        return true;
    }
}
```
