pragma solidity ^0.8.0;
contract s2
{
    function f() public pure { uint256 c=0xfffffffffffffffffffffff0; c&=~0; uint192 d=0; uint256 e=1000; e&=~0; }
    function g() public pure { uint224 c=0xfffffffffffffffffffffff400; c&=~0; uint256 d=uint256(1000); uint224 e=1000; e&=~0; }
}
