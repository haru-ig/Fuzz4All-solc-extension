pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f(uint x, uint y, uint z) public payable
    {
        uint a;
    }
}
contract Caller
{
    address private contractAddress;
    constructor(address _contractAddress) public
    {
        contractAddress = _contractAddress;
    }
    function fallback() public payable
    {
        semanticallyequivalent.f(0,1,9);
    }
    function call() public payable
    {
        semanticallyequivalent.f(0,1,1);
    }
    function callAndFail() public payable
    {
        semanticallyequivalent.f(0,1,0);
    }
    function receive() public pure
    {
        semanticallyequivalent.f(0,1,0);
    }
    function receiveAndCall() public pure
    {
        semanticallyequivalent.f(0,1,0);
    }
}
