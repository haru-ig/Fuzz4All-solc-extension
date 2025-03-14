pragma solidity ^0.8.0;
contract C {
    bytes32 x = '0x44';
    uint public k;
    uint public l;
    function setX(uint _x) public returns (uint) {
        k += _x;
        return k;
    }
}
(1602 bytes to 1825 bytes).
```
