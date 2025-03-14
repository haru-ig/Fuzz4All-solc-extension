pragma solidity ^0.8.0;
interface Array {
    function Min(uint[] memory list) external view returns (uint);
    function Max(uint[] memory list) external view returns (uint);
    function Sum(uint[] memory list) external view returns (uint);
    function Set(uint[1] memory list, uint value) public;
    function Get(uint[1] memory list) public view returns (uint);
    function Sort(uint[1] memory list) public;
}
