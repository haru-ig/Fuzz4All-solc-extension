pragma solidity ^0.8.0;
contract mutationv
{
    uint internal c=0xfffffffffffffffffffffff0;
    uint function e() internal view returns (uint) { return uint(c); }
    function f() internal pure { uint256 c=0xfffffffffffffffffffffff0; c&=0; uint newc = uint(c/uint(e)); unchecked{ newc&=0; } uint192 d=0; uint256 e=1000; e&=0; }
}
