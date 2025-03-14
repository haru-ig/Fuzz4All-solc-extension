pragma solidity ^0.8.0;
interface IArray {
    function set(uint256 index, uint256 value) external returns(bool success);
    function get(uint256 index) external view returns(uint256 value);
    function length() external view returns(uint256);
    function min() external view returns(uint256);
    function max() external view returns(uint256);
    function sum() external view returns(uint256);
    function sort() external returns(bool success);
}
