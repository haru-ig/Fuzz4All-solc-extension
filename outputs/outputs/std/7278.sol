pragma solidity ^0.8.0;

{
    uint[] public list;
    function m1() public { list.push(1); }
    function m2() public { list[8] = 0; }
    function m3() public { list[24] = 0; list[9383849849] = 8; }
}
