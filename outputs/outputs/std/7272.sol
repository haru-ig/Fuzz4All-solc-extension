pragma solidity ^0.8.0;
contract Mutation
{
    uint[] public a;
    function m1() public { a.push(); }
    function m2() public { a[0] = 0; }
    function m3() public { a[0] = 0; a[120000] = 0; }
}
