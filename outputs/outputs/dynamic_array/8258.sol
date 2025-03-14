pragma solidity ^0.8.0;
contract Solidity3 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
    }
    modifier withModifyX() {
        x = x-1;
        y = 2*x + y;
        z = 4*x - 5*y;
        _;
    }
    function modifyX() public withModifyX { }
    function test() public {
        x = 1;
        y = x + y;
        z = 2*x + 4*y;
    }
}
