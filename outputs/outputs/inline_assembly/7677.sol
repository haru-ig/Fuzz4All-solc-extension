pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract L10 {
    uint public constant value = 0xab2b344401d8bd7d1733f9a0c2b;

    struct T { uint _value; }
    function F() public pure virtual {
    _value = T(abi.encodePacked(T(3)))._value;
    }
}
```
