pragma solidity ^0.8.0;
contract Solidity3 {
    uint public x;
    uint public y;
    uint public z;
    address payable public addr;
    constructor() public {
        x = 1;
        y = x * x * x * x;
        z = 2*x + 4*y;
        addr = payable(msg.sender);
        addr.transfer(z);
    }
    function modifyZ() public {
        x = 1;
        y = x * x * x * x;
        z = 2*x + 4*y;
        addr = payable(msg.sender);
    }
    function test() public {
        x = 1;
        y = x * x * x * x;
        z = 2*x + 4*y;
        addr = payable(msg.sender);
    }
}
