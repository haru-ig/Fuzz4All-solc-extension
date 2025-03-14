pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    constructor(uint initialX, uint initialY, uint initialZ) {
        x = initialX;
        y = initialY;
        z = initialZ;
    }
    function modifyX(uint t) public {
        x = t;
    }
    function modifyY() public {
        y = 2*x + 4*y;
    }
    function modifyZ() public {
        z = 2*x + 4*y + 8*y*y;
    }
}
