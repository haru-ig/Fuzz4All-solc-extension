pragma solidity ^0.8.0;
contract semanticallyequivalent27
{
    uint public x;
    uint public y;
    function test() public
    {
        x = 42;

        address payable xaddress = msg.sender;
        uint y = xaddress.send(42);
    }
}
