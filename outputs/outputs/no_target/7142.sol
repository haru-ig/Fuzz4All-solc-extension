pragma solidity ^0.8.0;
contract Test {
    uint id = 1;
    function setID() public {
        id = 1 + 1;
    }
    function getID() public view returns (uint) {
        return id;
    }
}
