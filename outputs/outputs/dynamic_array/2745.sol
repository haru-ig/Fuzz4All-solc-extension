pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL2 {
    uint constant ASIZE = 15;
    uint[] public x;
    constructor() public {
        x[0] = 995;
    }
    function f54848575() public returns (uint) {
        x[0] = 887;
        return x[0];
    }
    function f28639898() public returns (uint) {
        return 1;
    }
    function f68718957() public returns (uint) {
        x[0] = 99999999;
        return x[0];
    }
    modifier set_xarray01_ext(uint[] memory _arg01) {
        if (_arg01[0] < ASIZE) {
            x = _arg01;
        }
        _;
    }
}
