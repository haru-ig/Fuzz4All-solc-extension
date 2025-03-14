pragma solidity ^0.8.0;
contract Injection_05
{
    uint private x1;
    uint private x2;
    uint private x3;

    function get(uint w1, uint w2, uint w3) public pure
    {
        (uint x1,, x3) = (w1, w2, w3);
        x2 = x1 + x3;
    }
}
