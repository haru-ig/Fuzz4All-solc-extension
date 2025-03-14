pragma solidity ^0.8.0;
interface SimpleStore {
    function set(bytes32 key, uint data) external;
    function get(bytes32 key) public view returns (uint data);
}
