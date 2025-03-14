pragma solidity ^0.8.0;
contract Test10 {
    uint8 _mem;
    uint8[4] _value;
    constructor()
        public
    {




        _mem = (_value[2] << 8) | _value[3];
    }
}
