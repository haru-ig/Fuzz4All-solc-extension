pragma solidity ^0.8.0;
interface MutatedInterface {
    function set(int256 value) external;
    function get() external view returns (int256);
}
