pragma solidity ^0.8.0;
import "./IArray.sol";
interface IArray2 {
    function count2() external view returns (uint);
    function getMinimum2() external view returns (uint);
    function getMaximum2() external view returns (uint);
    function getAverage2() external view returns (uint);
    function findMinimum2() external view returns (uint);
}
