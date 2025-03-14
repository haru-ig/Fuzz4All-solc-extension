pragma solidity ^0.8.0;
interface i {
    function m() external pure returns (uint);
}
contract a{
    bytes32 x;
    function f() external pure { x = 012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789; }
contract a{
    bytes32 x;
    function f() external pure { x = "abcdefghijklmnopqrstuvwxyz"; }
}
contract c{
    i z;
    function g() external pure { z = i(1234 + 1); }
}
contract c{
    i z;
    function g() external pure { z = i(1234); }
}
