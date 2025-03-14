pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V3_2 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        uint[20] memory a;
        for(uint i = 0; i < 20; i++)
            a.push(x[i]);
    }
        void setPairs_V3(mypair[] memory a, uint k) public {
        x[2] = a[k].aValue;
    }
}
