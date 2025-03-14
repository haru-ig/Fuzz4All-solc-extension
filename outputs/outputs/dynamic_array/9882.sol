pragma solidity ^0.8.0;
contract SemanticTest_v7_fix {
    mapping (address => uint256) public balances;
    constructor(uint256 _mintAmount0) public {
        balances[msg.sender] = _mintAmount0;
    }
}
