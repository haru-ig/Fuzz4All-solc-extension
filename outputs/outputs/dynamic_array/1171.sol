pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray1 {
    mapping(address => uint256) public accountToValue;
    function addRecord(uint256 a) public returns(uint256){
        return accountToValue[msg.sender] += a;
    }
    function getAccountToValue() public returns(uint256) {
        return accountToValue[msg.sender];
    }
}


pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray0 {
    mapping(address => uint256) public accountToValue;
    function addRecord(uint256 a) public returns(uint256){
        return accountToValue[msg.sender] += a;
    }
    function getAccountToValue() public returns(uint256){
        return accountToValue[msg.sender];
    }
    function updateAccountToValue() public returns(uint256){
        accountToValue[msg.sender] += 1;
        return accountToValue[msg.sender];
    }
}
contract SemanticIndependenceAndDynamicArray3 is
    SemanticIndependenceAndDynamicArray0,
    SemanticIndependenceAndDynamicArray1
{
    function updateAccountToValue() public returns(uint256){
        accountToValue[msg.sender] += 1;
        return accountToValue[msg.sender] - 1;
    }
}
