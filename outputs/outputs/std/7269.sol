pragma solidity ^0.8.0;
contract Mutation
{
    uint[] a;
    function m1() public { a.push(); }
    function m2() public { uint[] storage b = a; a = b; }
    function m3() public { uint[] memory c = a; a = c; }
}
