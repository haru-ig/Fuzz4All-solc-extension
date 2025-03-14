pragma solidity ^0.8.0;
contract FallbackTest
{
    constructor()
    {}
    function fallback() public payable{   }
    receive() public payable
    {
    }
}
