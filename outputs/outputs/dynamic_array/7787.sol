pragma solidity ^0.8.0;
contract Test10 {
    uint8 _mem;
    constructor()
        public
    {
        _mem = 0x55;
    }
    uint8[42] _value1 = new uint8[](42);
}
