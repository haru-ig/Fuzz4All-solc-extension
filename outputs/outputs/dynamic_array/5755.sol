pragma solidity ^0.8.0;
library Y {
    struct YS {
        uint8 y;
    }
    struct DYNARRAY500 {
        YS D0;
        uint256[] _D1;
        uint8 _D2;
        uint256 _D3;
        uint32 _D4;
    }
    uint8[] DYNARRAY500Var;
    constructor() public {
        DYNARRAY500Var.push(YS(0));
        DYNARRAY500Var.push(YS(1));
    }
    function getA() public returns (uint16) {
        return DYNARRAY500Var[100];
    }
    function getB() public returns (uint256) {
        return DYNARRAY500Var[99];
    }
    function getC() public constant returns (uint16) {
        return DYNARRAY500Var[100];
    }
    function getBy() public constant returns (YS memory) {
        return DYNARRAY500Var[99];
    }
}
