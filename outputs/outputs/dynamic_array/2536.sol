pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations
{
    address[] public a;
    bool[] public b;
    uint128[] public c;
    constructor() {
        b[0] = b[0];
    }
    function setA (address[] memory _a) public {
        a = _a;
    }
    function setB (bool[] memory _b) public {
        b = _b;
    }
    function setC (uint128[] memory _c) public {
        c = _c;
    }
}
