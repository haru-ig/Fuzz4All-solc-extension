pragma solidity ^0.8.0;
contract Constr
{
    address payable beneficiary;
    uint256 amount;
    mapping (address => uint256) public balance;
    bytes32 password;
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function transfer(address payable _recipient, uint256 _value) public {
        require(msg.sender!= payable(_recipient), "Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        if (_recipient == address(this)!= true) {
            _recipient.transfer(_value);
        }
        if (_value == 0 || msg.data.length!= 0) {
            beneficiary.transfer(_value);
        }
        balance[msg.sender] -= _value;
        balance[_recipient] += _value;
    }
    fallback() external payable {
        revert();
    }
}
