pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_d89e90b88e9953b3c601b501e899030c39f5c08e
{
    uint256[2] x;
    uint[] public b;
    constructor () public {
        x[0] = 2;
        x[1] = 0;
        b = new uint[](0);
        b = new uint[](1);
        b[0]=2;
    }
    function f() public {
        x[0] = x[1];
        b[0] = x[0];
        x[0] = x[0] + 1;
        x[1] = x[1] + 1;
    }
}
