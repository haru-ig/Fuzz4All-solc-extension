pragma solidity ^0.8.0;
contract ChangeMutagenMod {
    using ChangeMutagenMod2 for uint;
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    function change(uint _value) public {
        _value.change2(_value);
        _value.change2(_value);
        _value.change2(_value);
    }
}
```
