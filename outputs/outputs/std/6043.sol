pragma solidity ^0.8.0;
interface IMemory {
    function store(address addr, bytes memory data) external;
    function get(address addr) external view returns (bytes memory);
}
