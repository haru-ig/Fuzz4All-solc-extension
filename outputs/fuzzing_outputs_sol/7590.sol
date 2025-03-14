pragma solidity ^0.8.0;
contract NotOptimizedOnChain
{
    uint x;
    function call() public {
        x += 1;
    }
}
