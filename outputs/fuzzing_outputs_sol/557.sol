pragma solidity ^0.8.0;
contract TestFallback4a
{
    function f() public
    {
        if (msg.data.length == 32)
            counts[msg.sender] -= 2;
    }
}
