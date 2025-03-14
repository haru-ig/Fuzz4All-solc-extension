pragma solidity ^0.8.0;
contract failuremutablefallback_immutable
{
    uint constant n = 5;
    function immutable_receive() external pure {
        return;
    }
}
