pragma solidity ^0.8.0;
contract MutatedContactsExample086 {
    mapping(address=>bool) public isFriends;
    address public owner;
    mapping(address=>uint256) public friends;
    constructor() {
        owner = _msgSender();
        address(address.callvalue(owner));
    }
}
