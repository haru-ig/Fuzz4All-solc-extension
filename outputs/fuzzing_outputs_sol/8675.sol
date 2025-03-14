pragma solidity ^0.8.0;
contract Constr
{
    address payable beneficiary;
    uint256 amount;
    mapping (address => uint256) public balance;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transfer(address _to, uint _value) public returns (uint256 gasUsed) {
        amount += _value;
        require(msg.sender!= _to, "Invalid transfer address");
        balance[msg.sender] -= _value;
        balance[_to] += _value;
        gasUsed = 0;
    }
}
