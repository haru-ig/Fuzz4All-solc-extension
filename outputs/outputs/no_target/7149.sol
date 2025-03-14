pragma solidity ^0.8.0;
contract Test {
    uint id = 1;
    uint256 private counter;
    function setID() public {
    }
    function getID() public view returns (uint) {
        return id;
    }
    function incID() public {
        counter +=1;
    }
}
