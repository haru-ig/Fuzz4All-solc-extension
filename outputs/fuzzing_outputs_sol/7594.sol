pragma solidity ^0.8.0;
address payable addr;
contract Mutated
{
    uint x;
    function call() public payable {
        x += 1;
    }
}
