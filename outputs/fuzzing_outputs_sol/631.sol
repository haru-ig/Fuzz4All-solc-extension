pragma solidity ^0.8.0;
contract Caller
{
    uint256 data;
    constructor()
    {
        data = 2;
    }
    function call() public
    {
        data = 3;
    }
    function fallback() public payable
    {
        self.call();
        emit MyEvent(data);
    }

    event MyEvent (uint256 data);
}
