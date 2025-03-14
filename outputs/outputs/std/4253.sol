pragma solidity ^0.8.0;
interface IArray {
    function push(uint256 val) external;

    function pop(uint256 len) external returns (uint256);

    function set(uint256 index, uint256 val, uint256 len) external;

    function get(uint256 index, uint256 len) external view returns (uint256);

    function getMin(uint256 len) external view returns (uint256);

    function getMax(uint256 len) external view returns (uint256);

    function sum(uint256 len) external view returns (uint256);

    function sort(uint256 len) external;

    function reverse(uint256 len) external;

    function clone(uint256 len) external returns (uint256[] memory);
}
