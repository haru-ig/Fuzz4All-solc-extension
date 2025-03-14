pragma solidity ^0.8.0;
contract Test8 {
    uint8 _mem;
    uint8[7] _value;
    constructor() {
        _mem = _value[_value.length];
    }
}
