pragma solidity ^0.8.0;
contract Injection_05
{
    function get(uint w1, uint w2, uint w3) public pure
    {
        uint a,b;
        (a,b, ) = (w1, w2);
    }
}
