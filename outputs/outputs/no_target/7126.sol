pragma solidity ^0.8.0;
contract Simple {
    address public owner;
    function setID() public { owner = msg.sender; }
    function getID() public returns (address) { return owner; }
}
