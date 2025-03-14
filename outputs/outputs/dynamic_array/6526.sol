pragma solidity ^0.8.0;
contract T8EM {
    uint b = 0;
    uint[] a1;
    uint[] a2;
    uint[] a3;
    uint16[] b1;
    uint8[] _storage1;
    uint8[] _storage2;
    uint8[] _storage3;
    uint8[] _storage4;
    uint8[] _storage5;
    constructor() public {
        a1.length--;
        a2.length--;
        a3.length--;
        a1.length--;
        a2.length--;
        a3.length--;
    }
    function add(uint x) public {
        a2.length++;
    }
}
