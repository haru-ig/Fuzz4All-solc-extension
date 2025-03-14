pragma solidity ^0.8.0;
contract Test {
    uint _id = 1;
    function setID() public {
        _id = 1 + 1;
    }
    function getID() public view returns (uint) {
        return _id;
    }
}
