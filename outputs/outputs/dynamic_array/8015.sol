pragma solidity ^0.8.0;
contract Test47 {
    uint x;
    constructor() public {
        x = 2;
    }
    function setX1() public {
        x = 0;
    }
    function setX2() public {
        x = 1;
    }
    function getX() public view returns(uint) {
        return x;
    }
}
