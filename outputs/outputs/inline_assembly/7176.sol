pragma solidity ^0.8.0;
contract ChildUpgrade {
    address private childAddress;
    constructor(address _childAddress) public {
        childAddress = _childAddress;
    }
}
