pragma solidity ^0.8.0;
contract C {
    uint x;
    constructor() public {
        x = 7;
    }
    function setX() public {
        x = 15;
    }
    function getX() public view returns (uint) {
        return x;
    }
    function getFirstX() public view returns (uint, uint)   {
        (uint x1,uint x2) = x;
        return (x1,x2);
    }
    function setXSecond(uint _x) public {
        (uint x1,uint x2) = getFirstX();
        x1 = _x;
        x2 = _x + 7;
    }
}
