pragma solidity ^0.8.0;
contract Test1804D {
    uint16 public array;
    uint8 public x;
    constructor() public {
        array = 0;
        x = 1;
        array >>= 1;
    }
    function setX(uint8 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
    function getX() public view returns (uint8) {return x;}
}
