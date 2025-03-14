pragma solidity ^0.8.0;
contract SymbolicEquality_AssignDynamicArrays {
    uint[] public x;
    uint[] public y;
    uint _count;
    constructor () public
    {
        x = new uint[](3); x.push(x[2]);
        y = new uint[](3); x.push(y[2]);
    }
        function m1() public view returns (uint a1) {
        a1 = x.length;
        return x.length;
    }
        function set1(uint a0) public {
        y[1] = a0;
        x[1] = a0;
    }
        function set2(uint a0, uint a1) public {
        y[1] = a0;
        x[1] = a0;
        x[2] = a1;
        x.push(a1);
    }
        function set3(uint a0, uint a1, uint a2) public {
        y[1] = a0;
        x[1] = a0;
        x[2] = a1;
        for (uint i = 0; i < y.length; i++)
        {
            x.
