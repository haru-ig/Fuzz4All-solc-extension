pragma solidity ^0.8.0;
contract Test11 {
    uint8[100] memory _value;
    uint8 memory _mem;
    uint8[42] memory _value1;
    constructor()
        public
    {
        _mem = _value1[41];
        _value[4] = _mem;
    }
}
