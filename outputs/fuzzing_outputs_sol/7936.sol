pragma solidity ^0.8.0;
contract Derived(Equivalent)
{
    uint constant ONE_SECOND =   1 seconds;
    uint constant THIRTY_TWO_SECOND =  32 seconds;
    modifier onlySecond()
    {



        require(block.timestamp >= THIRTY_TWO_SECOND, "Can only call from 32 seconds or later");
        _;
    }
    function sendEther(uint x) public payable override onlySecond{x * 2;}
}
