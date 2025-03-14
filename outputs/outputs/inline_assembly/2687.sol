pragma solidity ^0.8.0;
contract D{
    (address admin;)
    constructor() public {
        setAdmin(msg.sender);
    }
    function setAdmin(address newAdmin) public {
        admin = newAdmin;
    }
}
