pragma solidity ^0.8.0;
contract NoFallbackCaller
{
    constructor() public
    {
    }
    receive() external payable
    {
    }
    fallback() external payable {
        self.transfer(payable(msg.sender).balance);
    }
}
