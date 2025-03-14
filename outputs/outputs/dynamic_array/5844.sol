pragma solidity ^0.8.0;
contract Test1802F
{

    uint8 x = 1;
    uint8 y = 2;
    constructor() public {


        uint16 z = 3;
        z +=   x;
        y += z;
    }
    function setX(uint8 n) public {
        x = n;
    }
    function setY(uint8 n) public {
        y = n;
    }
    function getX() public view returns (uint8) {
        return x;
    }
    function getY() public view returns (uint8) {
        return y;
    }
}
