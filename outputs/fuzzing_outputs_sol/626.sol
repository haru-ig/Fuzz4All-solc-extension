pragma solidity ^0.8.0;
contract FallbackTest
{
    constructor()
    {}



    function fallback() public payable
    {

        address myContract = msg.sender;
    }
}
