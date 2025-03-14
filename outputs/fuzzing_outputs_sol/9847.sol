pragma solidity ^0.8.0;
contract Receiving
{
    receive() external payable {}
    function changeFallbackToReceive() external {}
}
contract ContractWithFallback
{
    fallback () external{
    }
    receive() external {}
}
