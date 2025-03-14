pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint x;

    constructor() public {
        x = 1799;
    }

    function setX(uint y) public {
       x = y;
    }
    function getX() public pure returns(uint) {
       return x;
    }
}
