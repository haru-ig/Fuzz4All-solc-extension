pragma solidity ^0.8.0;
contract FallbackMutator
{
    uint public i;
    receive() external payable{
        i++;
    }
    fallback () external payable{}
}
