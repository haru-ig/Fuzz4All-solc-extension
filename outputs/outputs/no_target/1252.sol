pragma solidity ^0.8.0;
contract Injection_04
{
    function get(uint w1, uint w2, uint w3) public pure
    {
        (uint x1,, ) = (w1, w2, w3);
    }
}
