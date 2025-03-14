pragma solidity ^0.8.0;


contract A {
    uint256[] private array;
    uint256 private idx;



    function setFrom(uint a, uint i) public {
        require(i <= 10, "Invalid index");
        require(a < 100, "Invalid value");
        array[i] = a;
    }









    function set(uint a, uint i) public {
        require(i <= 10, "Invalid index");
        array[i] = a;
    }



    function readFrom(uint i) public view returns (uint) {
        require(i <= 10, "Invalid index");
        return array[i];
    }









    function read(uint i) public view returns (uint) {
        require(i <= 10, "Invalid index");
        return array[i];
    }
}
