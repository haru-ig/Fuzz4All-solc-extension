pragma solidity ^0.8.0;
contract Constr
{
    uint constant amountOfTokens = 1000;
    address payable beneficiary;
    uint256 amount;
    uint balance;
    mapping (address => uint) public balanceOf;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transfer(uint _value) public returns (uint256 gasUsed) {
        require(amount >= _value, "Invalid transfer amount");
        balance -= _value;
        balanceOf[msg.sender] += _value;
        gasUsed = 0;
    }
    function burn(uint _value) public returns (uint256 gasUsed) {
        require(amount >= _value, "Invalid burn");
        amount -= _value;
        balance += _value;
        gasUsed = 0;
    }
}
