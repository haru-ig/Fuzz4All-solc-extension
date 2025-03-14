pragma solidity ^0.8.0;
interface IArray4 {
    function count() external view returns (uint);
    function getMinimum() external view returns (uint);
    function getMaximum() external view returns (uint);
    function getAverage() external view returns (uint);
    function findMinimum() external view returns (uint);
}
