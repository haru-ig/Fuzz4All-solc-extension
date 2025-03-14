pragma solidity ^0.8.0;
contract Test6 {
    uint8 internal _mem;
    uint8 internal _value = 8;
    address internal _address;
    address internal _address2;
    uint _addressVar;
    uint _addressVar2;
    constructor(uint8 var)
        public
    {
        _mem = _value;
        _address = address(this);
        _address2 = address(this);
        _addressVar = var;
        _addressVar2 = var;
    }
}

contract Test7 {

    uint8[4] _array1 = [1, 2, 3, 4];
    uint8[4] internal _array2;

    uint8[5] _array3;
    uint8[5] internal _array4;

    uint8[3] _array5;
    uint8[3] internal _array6;
    constructor()
        public
    {
        _array2 = _array1;
        _array4 = _array3;
        _array2[1] = _array4[2];
    }
}
