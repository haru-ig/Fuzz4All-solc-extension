pragma solidity ^0.8.0;
contract Solidity3 {
    uint public x;
    uint public y;
    uint public z;
    uint public w;
    address payable public addr;
    uint constant y2 = 16;
    constructor() public {
        x = 1;
        y = x + y;
        z = 2*x + 4*y;
        w = 3*x + 5*y;
        addr = payable(msg.sender);
    }
    function modifyX() public {
        x = 1;
        y = x + y;
        z = 2*x + 4*y;
        w = 3*x + 5*y;
        addr = payable(msg.sender);
    }
    function test() public {
        x = 1;
        y = x + y;
        z = 2*x + 4*y;
        w = 3*x + 5*y;
        addr = payable(msg.sender);
    }
    function test2() public {
        x = 1;
        y = x + y;
        z = 2*x + 4*y;
        w = 3*x + 5*y;
        addr = payable(msg.sender);
    }
}
