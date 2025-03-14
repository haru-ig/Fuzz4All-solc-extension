pragma solidity ^0.8.0;
contract Mutated
{
    uint public i;
    receive() external payable{
        i = 6666;
    }
}
