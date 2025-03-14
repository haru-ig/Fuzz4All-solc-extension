pragma solidity ^0.8.0;
contract Test1805G {
    uint16[] arr;
    uint8 x = 1;
    constructor() public {
    }
    function setX(uint8 number) public {
        x++;
    }
    function getX() public view returns (uint8) {return x;}
}
