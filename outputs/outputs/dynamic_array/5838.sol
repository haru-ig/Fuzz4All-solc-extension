pragma solidity ^0.8.0;
contract Test1805E2 {
    uint16 public x;
    uint8 public y;
    uint16 public array;
    uint8 public x1;
    contract C(uint16 _x);
    constructor() public{
        array = 0;
        x = 1;
        x1 = 1;
        C(1);
    }
    function setX(uint8 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
    function getX() public view returns (uint8) {return x;}
}
