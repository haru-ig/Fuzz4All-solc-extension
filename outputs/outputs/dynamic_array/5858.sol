pragma solidity ^0.8.0;
contract Test1805I {
    uint16[] arr = new uint16[](5);
    uint16 y;
    constructor() public {
    }
    function setX(uint16 number) public {
        y++;      }
    function getX() public view returns (uint16) {return y;}
}
