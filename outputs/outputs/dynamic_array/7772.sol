pragma solidity ^0.8.0;
contract Test7 {
    uint8 _mem;
    uint8 _value = 8;
    mapping(uint16 => uint8) _store;
    constructor()
        public
    {
        _store[_value] = _value;
        _mem = _value;
    }
}
