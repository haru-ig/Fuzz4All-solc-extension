pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_134b66aa4f32cf4816f08a65bb77c0b56ec6e20b
{
    function g() public {
        uint[] memory _b = new uint[](2);
        _b[0] = 3;
        _b[1] = _b[0] + 1;
        _b[0] = 2;
    }
    constructor (uint _a) public {
        uint[] memory _b = new uint[](2);
        _b[0] = _a;
        _b[1] = _b[0] + 1;
    }
    function f() public {
        uint[] memory _b = new uint[](2);
        _b[0] = _a;
        _b[1] = _b[0] + 1;
    }
}
