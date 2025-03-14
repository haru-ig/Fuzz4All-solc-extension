pragma solidity ^0.8.0;
contract Test8 {
    uint8 _mem;
    uint8[4] _value;
    constructor()
        public
    {
        _mem = _value[2];
    }
}

pragma solidity ^0.8.0;
contract Test9 {
    uint8 _mem;
    uint8[100] _value;
    constructor()
        public
    {
        _mem = _value[42];
    }
}
