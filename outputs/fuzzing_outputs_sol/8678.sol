pragma solidity ^0.8.0;
contract Constr
{
    address payable beneficiary;
    uint256 amount;
    mapping (address => uint256) private balance;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transfer(address _to, uint _value) public returns (uint256 gasUsed) {
        require(msg.sender!= _to, "Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        balance[msg.sender] -= _value;
        balance[_to] += _value;
        gasUsed = 0;
    }
    receive() payable {
        require(msg.value > 0, "Invalid transfer amount");
        require(balance[msg.sender] + msg.value <= amount, "Insufficient funds");
        uint256 gasUsed = msg.value;
        amount -= msg.value;
    }
}
