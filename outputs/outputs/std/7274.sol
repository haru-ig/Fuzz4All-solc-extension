pragma solidity ^0.8.0;
contract Mutation1 is Mutation
{
    uint[] a;
    function m1() public { a.push(); }
    function m4() public { uint[] storage b = a; b[0] = (uint(0) + a[0]); a = b; }
    function m5() public { uint[0] memory c = a; a = c; }
    function m7() public { uint[] memory d = b; b = d; }
}
