pragma solidity ^0.8.0;
contract semanticallyequivalent2x
{
    uint public x = 1;
    uint public y = 2;
    function f() public payable
    {
    emit FallbackSender(msg.sender, msg.data);
    require(y == 3);
    }
    receive() payable {}
}
