pragma solidity ^0.8.0;
contract Test {
    uint public id;
    address public owner;
    constructor (address _owner) public { owner = _owner; }
    modifier authorized() { require(msg.sender == owner); _; }

    function setID(uint _id) public authorized { id = _id; }
    function getID() public view returns (uint) { return id; }
}
