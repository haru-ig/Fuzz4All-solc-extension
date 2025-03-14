pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](1);
        uint[] memory a;
        for(uint i = 0; i < x.length; i++)
            x.push(x[i]);
    }
    function getPair_V3() public view returns (mypair memory) {
     mypair storage a = y[1];
    return (a);
    }
}
