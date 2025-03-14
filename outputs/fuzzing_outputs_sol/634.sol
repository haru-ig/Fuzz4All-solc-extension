pragma solidity ^0.8.0;
contract Caller
{
    function fallback() public payable
    {
        FallbackTest contractInstance = new FallbackTest();
        address myContract = contractInstance;
    }
}
