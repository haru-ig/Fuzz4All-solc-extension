pragma solidity ^0.8.0;
contract failuremutablefallbacksemantic_mutable
{
    uint constant n = 5;
    receive() external payable {
        return;
    }
}
