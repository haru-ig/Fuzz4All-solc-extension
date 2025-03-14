pragma solidity ^0.8.0;
contract MutatedSolidity2 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
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
        z = 2*x + 4*y + 8*y*y;
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity3 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
    modifier withModifyY(uint yChange) {
        y = 2*x + 4*y + yChange;
        z = 2*x + 4*y + 8*y*y;
        _;
    }
    modifier withModifyX(uint xChange) {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
        _;
    }
    modifier withModifyZ(uint zChange) {
        z = 2*x + 4*y + 8*y*y + zChange;
        x = 1;
        y = 2*x + 4*y;
