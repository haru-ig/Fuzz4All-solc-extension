pragma solidity ^0.8.0;
contract SemanticTest_v5 {
    mapping (address => uint256) balances;
    constructor(uint256 _mintAmount0) public {
        balances[msg.sender] = _mintAmount0;
    }
}
