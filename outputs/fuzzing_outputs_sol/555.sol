pragma solidity ^0.8.0;
contract TestFallback5
{
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function f() public {
        if (msg.value > 0)
            msg.sender.transfer(msg.value);
    }
    function g() public {
        f();
        if (msg.value > 0)
            msg.sender.transfer(msg.value);
    }
}
