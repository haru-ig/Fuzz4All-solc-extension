pragma solidity ^0.8.0;
contract Injection_04
{
    function get(uint w1, uint w2, uint w3) public pure
    {
        (uint x1, uint x2, uint x3) = (w1, w2, w3);
    }
}

library SafeMath {
    function assert(uint256 a) internal pure {require(a >= 0, "SafeMath: negative value");}
}
