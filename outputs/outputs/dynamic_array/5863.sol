pragma solidity ^0.8.0;
contract Test1805III {
    bytes[] arr;
    uint32 y = 1;
    uint8 z = 9;
    constructor() public {
    }
    function setX(uint8 number) public {
        arr.push(number);      }
    function getX() public view returns (uint8) {return arr[y];}
}
