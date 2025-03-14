pragma solidity ^0.8.0;
contract Test {
    function setID() public pure {
        id = uint(1);
    }
    function getID() public view returns (uint) {
        return uint(1);
    }
}
