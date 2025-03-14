pragma solidity ^0.8.0;
contract Caller
{
    address immutable _address;
    constructor (address _address_) {
        _address = _address_;
        emit ContractChanged(address(0));
    }
    modifier onlyCaller() {
        require(
        tx.origin == _address && address(this)!= tx.origin,
        "Caller: Only the caller is allowed to call the contract!"
        );
        _;
    }

    function changeContract(address _address_) onlyCaller public{
        emit ContractChanged(_address_);
        _address = _address_;
    }

    function getAddress() public view returns(address) {
        return _address;
    }
}
