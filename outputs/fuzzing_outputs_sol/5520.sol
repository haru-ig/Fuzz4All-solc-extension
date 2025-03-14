pragma solidity ^0.8.0;
contract failuremutablefallback_mutable
{
    uint constant n = 5;

    receive() payable external {
        return;
    }
}
