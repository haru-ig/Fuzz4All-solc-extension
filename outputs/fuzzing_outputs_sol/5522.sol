pragma solidity ^0.8.0;
contract failuremutablefallback
{
    receive() external {}
    receive() payable {}
}
