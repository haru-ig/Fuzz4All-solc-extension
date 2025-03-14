pragma solidity ^0.8.0;
interface CallerInterface
{
    function callFunction1()public returns(uint);
    function useReturnData()public payable returns(uint);
    function getReturnData()public view returns(uint);
}
contract TestContract
{
    uint x;
    CallerInterface I;
    function test(uint x)public
    {
        x = 1;
        I.test(3);
    }

    function fallback() public payable
    {
        uint x;
        x = 3;
        uint data3 = I.useReturnData();
    }

    function useReturnData() public payable returns(uint)
    {
        uint x;
        uint data3 = I.useReturnData();
        uint y = y;
    }

    function receiveEther() payable public
    {
        uint x;
        uint y = y;
        uint data3 = I.useReturnData();
        address payable z = payable(msg.sender);
        uint xz1 = x;
    }
}
