pragma solidity ^0.8.0;
contract Test12 {
    uint8 _mem;
    uint8[0, 100] _value;
    uint8 x = _value[99];
    constructor()
        public
    {
        _mem = x;
    }
}
