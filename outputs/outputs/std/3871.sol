pragma solidity ^0.8.0;
interface IArray {
    function getSize(uint256 _index) external view returns (uint256);
    function setSize(uint256 _index, uint256 _size) external;
    function get(uint256 _index) external view returns (bytes1 memory);
    function getSize() external view returns (uint256);
    function getAddress(uint256 _index) external view returns (address);
}
