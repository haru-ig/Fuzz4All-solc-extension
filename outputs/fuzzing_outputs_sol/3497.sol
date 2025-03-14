pragma solidity ^0.8.0;
contract MutatedStorage6 {
    mapping(address => address) public owners;
    uint public num;
    constructor() public {
    }
    function setOwner(address _owner) public{
        owners[_owner] = msg.sender;
    }
    function removeOwner(address _owner) public{
        delete owners[_owner];
    }
    function modify(uint _number) public {
        num = _number;
    }
    function getNumber() public view returns (uint) {
        return num;
    }
}
