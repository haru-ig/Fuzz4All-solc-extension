pragma solidity ^0.8.0;
interface Array4 {
    function count(uint _elem1, uint _elem2, uint _elem3, uint _elem4) external view returns (uint);
    function getMinimum(uint _elem1, uint _elem2, uint _elem3, uint _elem4) external view returns (uint);
    function getMaximum(uint _elem1, uint _elem2, uint _elem3, uint _elem4) external view returns (uint);
    function getAverage(uint _elem1, uint _elem2, uint _elem3, uint _elem4) external view returns (uint);
    function findMinimum(uint _elem1, uint _elem2, uint _elem3, uint _elem4) external view returns (uint);
}
