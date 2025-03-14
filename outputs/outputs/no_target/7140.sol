pragma solidity ^0.8.0;
contract Test {
    uint public _id;
    function setID() public {
        _id = 1 + 1;
    }
    function getID() public view returns (uint) {
        return _id;

    }
}
