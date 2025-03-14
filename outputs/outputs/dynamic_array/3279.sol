pragma solidity ^0.8.0;
interface I {
    function setS(bytes32 key, uint256 value) external;
    function get(bytes32 key) external view returns (uint256);
    function increment(bytes32 key) external;
    function increment(bytes32 key, uint256 increment) public returns (uint256);
    function increment(bytes32 key, uint256 increment, uint256 max) public returns (uint256);
    function decrement(bytes32 key, uint256 decrement) external returns (uint256);
}

contract C {

    I i_;

    bytes32 b1_ = "a";
