pragma solidity ^0.8.0;
<fim_middle>contract Test10 {
    uint8[100] _value;
    uint8 _mem;
    uint8[42] _value1;
    constructor() public {
        _mem = _value1[41 -1];
        _value[4] = _mem;
    }
}
