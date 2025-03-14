pragma solidity ^0.8.0;
contract Test3808D {
    uint8 public array;
    uint32 public x;
    constructor() public {
        array = 0;
        x = 1;
        array >>= 1;
    }
    function setX(uint32 number) public {
        require(0 <= x && x <= 1);
        x = number;
    }
    function getX() public view returns (uint32) {return x;}
}
