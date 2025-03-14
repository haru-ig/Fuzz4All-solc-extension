pragma solidity ^0.8.0;
contract Mutated
{
    receive() external pure{
        i = 6666;
    }
}
