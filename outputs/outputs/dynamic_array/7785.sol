pragma solidity ^0.8.0;
contract Test11 {
    uint8 _value;
    uint8 _mem;
    uint8[62][34] _value1;
    constructor()
        public
    {
        _mem = _value1[61][33];
        _value[4] = _mem;
    }
}
contract Test12 {
    uint8[62] _value;
    uint8 _mem;
    uint8[62] _value1;
    uint8[62] _value2;
    uint8 _mem1;
    uint8 _mem2;
    uint8 _mem3;
    constructor()
        public
    {
        _value[40] = _mem;
        _mem3 = _value1[61][33];
        _mem1 = _value2[61][34][0];
        _mem = _value1[61][34][1];
        _mem2 = _value2[61][34][2];
        _value[1] = _mem;
        _mem = uint8(keccak256(abi.encodePacked(_mem3, _mem1, _mem2)));
    }
}
contract Test13 {
    uint8[42] _value;
    uint8 _mem;
    constructor()
        public
    {
        _value[40] = _mem;
    }
}
