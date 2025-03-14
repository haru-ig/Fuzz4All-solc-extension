pragma solidity ^0.8.0;
contract Test1805H {
    uint16[] arr;
    uint16 y = 1;
    constructor() public {
    }
    function setX(uint16 number) public {
        y++;
    }
    function getX() public view returns (uint16) {return y;}
}
