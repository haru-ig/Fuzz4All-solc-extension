pragma solidity ^0.8.0;
contract SemanticTest_v8_05 {
    constructor(uint256 _mintAmount0) public {

        balances[msg.sender] += _mintAmount0;
    }
}
