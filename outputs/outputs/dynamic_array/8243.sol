pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {





    }
    modifier withModifyX() {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
        _;
    }
    function modifyX() public withModifyX { }
    function test() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
}
