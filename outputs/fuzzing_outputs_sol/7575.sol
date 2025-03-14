pragma solidity ^0.8.0;
contract MutedFallback
{
    receive() external payable {}
    function fallback() public nonpayable
    {
        msg.data;
    }
}
