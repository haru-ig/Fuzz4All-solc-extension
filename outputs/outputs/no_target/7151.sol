pragma solidity ^0.8.0;
contract Test {
    uint id = 1;
    function setID() public {
    }
    function getID() public view returns (uint) {
        return id.div(2);
    }
    function incID() public {
        id = (id + 1).div(10);
    }
}
