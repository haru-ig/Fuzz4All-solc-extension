pragma solidity ^0.8.0;
contract Caller
{
    function test(uint y)public{
        emit EtherSent(msg.value);
        y++;
    }
    event EtherSent (uint value);
}
