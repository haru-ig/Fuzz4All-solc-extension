pragma solidity ^0.8.0;
contract Test10 {
    uint8 _mem;
    uint8[40] _value;
    constructor()
        public
    {
        _mem = _value[4];
    }
}
