pragma solidity ^0.8.0;
contract Test1805II {
    uint16[] public arr;
    uint16 public y;
    uint16 public z;
    constructor() public {
    }
    function setX(uint16 number) public {
        arr.push(number);      }
    function getX() public view returns (uint16) {return arr[y];}
}
