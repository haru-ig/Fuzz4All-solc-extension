pragma solidity ^0.8.0;
contract Test10 {
    uint8[100] _value0;
    uint8[100] _value1;
    uint8 _mem0;
    uint8 _mem1;
    uint8[100] _mem;
    constructor()
        public
    {
        _mem[41] = _value1[41];
        _value[4] = _mem[41];
        _mem0 = _value0[41];
        _mem1 = _value1[41];
        _mem[41] = _mem0;
        _mem1 = _mem0;
        _mem[41] = _mem1;
        _value[4] = _mem[41];
    }
}
