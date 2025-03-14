pragma solidity ^0.8.0;
contract Mut
{
    address payable private beneficiary;
    uint256 private amount;
    mapping (address => uint256) private balance;
    bytes32 private hashLastTimeCalled;
    modifier OnlyNotUsed() {
        hashLastTimeCalled = keccak256(abi.encode(hashLastTimeCalled));
        require(keccak256(abi.encode(msg.sender))!= hashLastTimeCalled, "Cannot use modifier twice");
        _;
    }
    constructor(address payable _beneficiary) {
        beneficiary = _beneficiary;
    }
    function trans(address _to, uint _value) public onlyNotUsed returns(uint256 gasUsed) {
        require(msg.sender!= _to, "Invalid transfer address");
        require(amount >= _value, "Invalid transfer amount");
        balance[msg.sender] -= _value;
        balance[_to] += _value;
        gasUsed = 0;
    }
}
