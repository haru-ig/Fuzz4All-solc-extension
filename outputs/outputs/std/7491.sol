pragma solidity ^0.8.0;
interface ArrayMethods {
    function length() external view returns (uint256);
    function add(uint256 a, uint256 b) external returns (uint256);
    function set(uint256 i, uint256 data) external;
    function arrayMin() external view returns (uint256);
    function max() external view returns (uint256);
    function min() external view returns (uint256);
    function sum() external view returns (uint256);
}
