pragma solidity ^0.8.0;
contract T9EM {
    uint a1;
    uint a2;
    uint a3;
    uint8 _storage1;
    uint8 _storage2;
    uint8 _storage3;
    uint8 _storage4;
    uint8 _storage5;
    constructor() public {
        a1 = 2;
        a2 = 1;
        a3 = 0;
    }
    function f() public {
        _storage1[a1] = 2;
        _storage2[a2] = 1;
        _storage3[a3++] = 0;
    }
}
