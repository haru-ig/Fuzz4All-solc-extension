pragma solidity ^0.8.0;
contract EquivalentSemantic_DynamicArrays_762a07ae2e9f4d972aadb2c0fe85aa900b224787
{
    constructor () public {
        uint[] memory _b = new uint[](2);
        _b[0] = 2;
        _b[1] = _b[0] + 1;
    }
    function f() public {
        uint[] memory _b = new uint[](2);
        _b[0] = _b[0] + 1;
        _b[1] = _b[0] + 1;
    }
}
