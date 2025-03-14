pragma solidity ^0.8.0;
contract TokenLock {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    constructor() {
        _balance -= _value;
    }
    fallback () external payable {
        if (amount()!= _value) revert("invalid ether amount");
        _balance -= amount();
    }
    function amount() public view returns (uint256) {
        return _balance;
    }
    function _transferOwnership(address owner) public pure {
        require(msg.sender == owner);
        emit OwnershipTransferred(owner);
    }
    event OwnershipTransferred(address indexed oldOwner);
}
