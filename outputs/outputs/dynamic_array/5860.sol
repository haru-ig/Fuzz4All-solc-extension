pragma solidity ^0.8.0;
contract Test1805II2 {
    uint16[] arr = [11];
    uint16 y = 1;
    uint16 z = 9;
    constructor() public {
    }
    function setX(uint16 number) public {
        arr[y] = number;      }
    function getX() public view returns (uint16) {return arr[y];}
}
