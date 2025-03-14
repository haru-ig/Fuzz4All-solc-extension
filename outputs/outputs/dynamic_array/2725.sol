pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Modifications_Mod {
    uint public x; uint public y;
    mapping(address => bool) public v;
    mapping(address => uint) public u;
    constructor(bool __v, uint256 __u) public {
        x = 1;
        y = 1e5e3;
        if (!__v) v[msg.sender] = true;
        u[msg.sender] = __u;
    }
}
