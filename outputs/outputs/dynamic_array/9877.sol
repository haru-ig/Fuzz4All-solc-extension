pragma solidity ^0.8.0;
contract SemanticTest_v6_Mutated {
    mapping (address => uint256) balances;
    constructor() public {
        balances[msg.sender] += 1;
    }
}
