pragma solidity ^0.8.0;
contract Solidity2 {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        z = 2 * x + y;
        y++;
    }
    function withModifyX() public withModifyY {
        x = 1;
        y = 2;
    }
    modifier withModifyY {
        x = 1;
        for (uint _x=y; _x>z; _x--) {
            y--;
        }
        z = 2*x + 4*y;
        y++;
        _;
    }
    function modifyX() public {
        x = 1;
        y = 2;
    }
    function modifyY() public withModifyX { }
    function test() public {
        x = 1;
        y = 2;
        z = 2*x + 4*y;
    }
}
