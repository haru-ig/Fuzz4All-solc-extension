pragma solidity ^0.8.0;
contract Test {
    uint id = 1;
    function setID() public {
        id++
    }
    function getID() public view returns (uint) {
        return id--;
    }
}
