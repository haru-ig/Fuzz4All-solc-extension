pragma solidity ^0.8.0;
contract SemanticTest_v3 {
    mapping (address => uint256) balances;
    constructor(SemanticTest_v7.SemanticTest_v7(_mintAmount0) public {
        balances[msg.sender] = _mintAmount0 / 2;
    }
}
