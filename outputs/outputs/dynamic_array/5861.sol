pragma solidity ^0.8.0;
contract Test1805I {
    uint16 y = 1;
    uint16 arr[10];
    constructor () public {
    }
    function setX(uint16 number) public {
        arr.push(number);      }
    function getX() public view returns (uint16) {return arr[y];}
}
