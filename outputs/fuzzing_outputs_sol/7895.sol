pragma solidity ^0.8.0;

contract Caller
{
    function sendEther(Mutator _caller, uint _amount) public payable
    {
        _caller.sendEther(_amount);
    }
}
