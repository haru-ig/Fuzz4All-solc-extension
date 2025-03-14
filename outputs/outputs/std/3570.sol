pragma solidity ^0.8.0;
interface IArrayContract{
    function findMin() external view returns(uint);
    function findMax() external view returns(uint);
    function sum() external view returns (uint);
    function setMax(uint newMax) external;
    function setMin(uint newMin) external;
    function setArray(uint[] memory newArray) external;
    function sortArray() external;
}
