pragma solidity ^0.8.0;
contract Test10 {
    uint8[42] _value;
    uint8 _mem;
    uint8[42][42] _value1;
    constructor()
        public
    {
        _value[41] = _mem;
        _value1.length = 42;
        _value43 = _value1[41];
        _value.length = 42;
    }
}
