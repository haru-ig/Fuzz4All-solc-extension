pragma solidity ^0.8.0;
contract ArrayInterface {
    function min() external view returns (uint min);
    function max() external view returns (uint max);
    function avg() external view returns (uint avg);
    function findMin(uint[] memory values)external view returns (uint idx);
    function findMax(uint[] memory values)external view returns (uint idx);
    function sum(uint[] memory values)external view returns (uint sum);
    function length(uint[] memory values)external view returns (uint length);
    function arrayToString(uint[] memory values) public view returns (string memory stringRepresentation);
    function stringToArray(string memory stringRepresentation) public view returns (uint[] memory values);
    function arraySort(uint[] memory values, uint order) external view returns (uint[] memory);
    function arraySortReverse(uint[] memory values, uint order) external view returns (uint[] memory);
}
