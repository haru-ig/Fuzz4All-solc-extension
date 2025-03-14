pragma solidity ^0.8.0;
interface SomeInterface {
    function m() external returns (uint);
    function M() external view returns (uint);
    function foo(uint x, uint y) internal returns (uint);
}
