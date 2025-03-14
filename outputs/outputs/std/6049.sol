pragma solidity ^0.8.0;
interface IArray {
    function count() external view returns (uint);
    function get(uint index) external view returns (uint);
    function set(uint index, uint data) external returns (uint, uint);
    function append(uint data) external returns (uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function sum() external view returns (uint);
    function sort() external returns (uint);
    function store(bytes memory data) external;
    function get() external view returns (bytes memory);
    function getAddressOf(uint index) external view returns (address);
    function appendAddressOf(uint data) external returns (uint);
    function addAddressOf(address addr) external returns (uint);
}
