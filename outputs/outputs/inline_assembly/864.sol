pragma solidity ^0.8.0;
contract MutatorWithSemanticEquivalance {
    address a;
    uint256 internal a2 = 5;
    uint256 internal a3;
    uint a4;
    uint a5;
    uint internal a6 = 6;
    uint internal b;
    uint internal b2;
    uint internal b3;
    address owner;
    mapping(address => uint) public balances;
    constructor() public {
        balances[msg.sender] = 3;
        balances[0x9984d69E3DEA367279F082EF4eF45c5F279E6A53] = 2;
        a4 = a3+a4;
        a5 = a5+a6;
        b2 = b+b2;
        balances[0x9984d69E3DEA367279F082EF4eF45c5F279E6A53] = 0;
        b3 = b3+b2;
        owner = msg.sender;
    }
}
