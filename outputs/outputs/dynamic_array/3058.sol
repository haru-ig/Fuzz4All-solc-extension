pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    uint[] memory myarr;
    uint[] public v0;
    uint[] public v1;
    constructor() public{
            x = new uint[](2);
            x[2] = 3 * 3;
            x[2] = x[2] + 2;
            myarr = new uint[1];
    }
    function setPairs_V4(uint[] memory a, uint k) public {
        x = a;
        uint x1 = a[2];
        uint x1_1 = 3 * 3;
        uint a1 = 3 * 3;
        uint a2 = 2;
        x1 = x1_1 + 2 * k + k + x1 + 10 + a1 + a2 + 24;
        v1 = a;
        v0 = v0 + a;
        uint x2 = a1;
        v0[2] = x1;
        v0[2] = x2;
    }
}
