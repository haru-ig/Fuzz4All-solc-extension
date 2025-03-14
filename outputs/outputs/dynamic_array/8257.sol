pragma solidity ^0.8.0;
contract Solidity2 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
    }
    modifier withModifyX() {
        x = 1;
        y = x + y;
        z = x*x*3 + 4*x*y + x + y*x + 5*x*x*5 + x*x + x*4;
        _;
    }
    function modifyX() public withModifyX { }
    function test(uint argX) public {
        x = argX;
        y += x;
        z += x*x*3 + 4*x*x*2 + 4*x*2 + x + 5*x*x*5 + x*x*3 + 3*x + 3*x*2*8 + x*2;
    }
}
