pragma solidity ^0.8.0;
address payable a;
address payable addr;
contract Example {
    uint public x;
    uint public y;
    uint private z;
    constructor() public {
        a = payable(msg.sender);
        addr = a;
        x = 1;
        y = 1;
        z = 1;
    }
    function test() public {
        a = addr;
        uint t1 = x+x;
    }
}
pragma solidity >=0.5.0 <0.9.0;
