pragma solidity ^0.8.0;
contract Injection_03
{
    function get(
        uint w1,
        uint w2,
        uint w3
    ) public returns (
        uint x1,
        uint x2,
        uint x3
    )
    {
        x1 = w1;
        x2 = w2;
        x3 = w3;
    }
}
