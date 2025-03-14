pragma solidity ^0.8.0;
contract Test {
    function setID() public {
        id = 1 + 1;
    }
    function getID() public view returns (uint) {
        return id;
    }
}
