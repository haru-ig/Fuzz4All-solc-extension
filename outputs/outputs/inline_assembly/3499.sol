pragma solidity ^0.8.0;
contract SemanticallyEquivalentContract {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    mapping (address => uint) accountValues;
    function change (uint _value) external {
        accountValues[msg.sender] -= TWO;
        accountValues[msg.sender] = ONE;
        accountValues[msg.sender] = TWO;
        accountValues[msg.sender] = ZERO;
        accountValues[_value] = ONE;
        accountValues[_value] = ONE;
        accountValues[_value] = TWO;
        accountValues[_value] = ZERO;
        accountValues[msg.sender] = ONE;
    }
    function getBalance () external view returns (uint) {
        return accountValues[msg.sender];
    }
}
