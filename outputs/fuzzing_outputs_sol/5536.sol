pragma solidity ^0.8.0;
contract fallbacksemantic_mut
{
    function f(uint a) external pure {
        a = a + 1;
        return;
    }
}
