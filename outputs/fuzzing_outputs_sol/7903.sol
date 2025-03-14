pragma solidity ^0.8.0;

contract FallbackFunction
{
    event LogFallBackCalled(int);

    receive() external payable { emit LogFallBackCalled(1); }
}
