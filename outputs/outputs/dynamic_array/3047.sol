pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V3 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](2);
        x.push(x[1]);
        x.push(x[2]);
    }
        function setPairs_V3(mypair[] memory a, uint k) public {
        x[2] = a[k].aValue;
    }
}
