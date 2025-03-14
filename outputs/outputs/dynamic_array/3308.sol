pragma solidity ^0.8.0;
interface I{
    function f(uint index) external;
    function f(uint index, uint other) external;
    function f(uint256 key) external;
}
