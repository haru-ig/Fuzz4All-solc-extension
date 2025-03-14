pragma solidity ^0.8.0;
contract Test1805II {
    uint16[] arr;
    uint16 y = 1;
    uint16 z = 9;
    constructor() public {
    }
    function setX(uint16 number) public {
        arr.push(number);      }
    function getX() public view returns (uint16) {return arr[y];}
}
