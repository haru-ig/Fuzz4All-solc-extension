pragma solidity ^0.8.0;
contract IArray {
    function getMin(uint[10] memory) view external returns (uint);
    function getMax(uint[10] memory) view external returns (uint);
    function getSum(uint[10] memory) view external returns (uint);
    function set(uint[10] memory, uint) external;
    function get(uint[10] memory, uint) view external returns (uint);
    function getElementsAtAddress(address[] memory) view external returns (uint[10] memory);
    function sort(uint[10] memory) external;
}
