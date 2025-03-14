pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray3 {
    mapping (address => uint8) private accountToValue;
    function add1ToBalance(uint256 value) public {
        accountToValue[msg.sender] += value+ 1;
    }
}
