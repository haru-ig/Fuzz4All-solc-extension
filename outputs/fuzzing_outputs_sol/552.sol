pragma solidity ^0.8.0;
contract TestFallback4
{
    address public owner;
    uint public x;

    constructor() {
        owner = msg.sender;
    }
    function f() public
    {
        x += 1;
        require(msg.value == 0);
        require(x!= 0);
    }
    function g() public
    {
        x -= 1;
        require(msg.value == 0);
        require(x < 0);
    }
}
