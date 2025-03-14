pragma solidity ^0.8.0;
interface IArray {
    function getLength() external returns (uint);
    function get(uint index) external view returns (uint);
    function set(uint index, uint val) external;
    function append(uint val) external;
    function remove(uint index) external;
    function sort(uint) external;
}
