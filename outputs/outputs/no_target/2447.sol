pragma solidity ^0.8.0;
contract mutationv223
{
    function f() internal pure returns(uint8) { uint8 c; c |= 3; c >>= 2; return c;}
}
