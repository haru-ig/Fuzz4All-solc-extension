pragma solidity ^0.8.0;
contract Test10 {
    uint88[100] _value;
    uint8 _mem;
    uint88[42] _value1;
    constructor()
        public
    {
        _mem = _value1[41];
        _value[4] = _mem;
    }
}
