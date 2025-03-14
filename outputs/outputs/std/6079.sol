pragma solidity ^0.8.0;
abstract contract Array4 {
    uint internal elem1;
    uint internal elem2;
    uint internal elem3;
    uint internal elem4;
    function getAverage() public view returns (uint);
    function findMinimum() public view returns (uint);
    function getMinimum() public view returns (uint);
    function getMaximum() public view returns (uint);
    function count(uint _elem1, uint _elem2, uint _elem3, uint _elem4) public view returns (uint);
    function setAverage(uint _elem1, uint _elem2, uint _elem3, uint _elem4) public;
    function setMinimum(uint _elem1, uint _elem2, uint _elem3, uint _elem4) public;
    function setMaximum(uint _elem1, uint _elem2, uint _elem3, uint _elem4) public;
}
