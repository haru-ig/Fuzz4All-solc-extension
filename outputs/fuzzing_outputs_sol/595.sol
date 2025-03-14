pragma solidity ^0.8.0;
contract RevertTest
{
    constructor()
    {
    }
    fallback() external payable
    {
        revert("something bad happened");
    }
}
contract FallbackTest
{
    uint myBalance;
    constructor()
    {
    }
    fallback() external payable
    {
        require(msg.value == 0.1 ether);
        require(address(this).balance == myBalance);
        myBalance += msg.value;
    }
}
contract Caller
{
    uint val;
    constructor()
    {
        val = 15;
    }
    function contractCaller() external payable
    {
        val *= 2;
        (bool ok, ) = address(this).call{value: msg.value}("");
        require(ok);
    }
}
