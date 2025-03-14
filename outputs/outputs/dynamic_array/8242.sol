pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
    modifier withModifyX() {
        x = 5;
        y = 20*x + 50*y;
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

pragma solidity ^0.8.0;
contract MutatedSolidity {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 1;
        y = 2*x + 4*y;
        z = 2*x + 4*y + 8*y*y;
    }
    modifier withModifyX() {
        x = 2*x;
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
