pragma solidity ^0.8.0;
contract fallbacksemantic_mutable
{
    uint storage x1 = 0;
    function f1() external pure {
        x1 = 1;
    }
    uint storage x1_mutable = 0;
    function f1x() external pure {
        x1_mutable = 1;
    }
}
