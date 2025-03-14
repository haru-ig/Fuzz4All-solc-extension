pragma solidity ^0.8.0;
interface IArray {
    modifier nonZeroAddress(uint16);
    function length() external view returns (uint);
    function isEmpty() external view returns (bool);
    function set(uint16 index, uint256 val) external nonZeroAddress(index);
    function get(uint16 index) external view returns (uint256);
    function swap(uint16 i1, uint16 i2) external nonZeroAddress(i1);
}
