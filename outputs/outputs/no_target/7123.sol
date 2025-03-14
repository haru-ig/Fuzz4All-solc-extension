pragma solidity ^0.8.0;
contract Test {
    address private a;
    function setID() public {
a = new Test().setID().getID();
    }
    function getID() public view returns (uint) { return a.getID(); }
}
