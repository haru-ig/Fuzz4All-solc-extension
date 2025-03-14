pragma solidity ^0.8.0;
contract CallerExample15 {
    uint counter;
    mapping(uint => uint) private map;
    uint[] private array;
    function add(uint y, uint x) public returns (uint z) {
        z = x + y;
        return z;
    }
    function subtract(uint y, uint x) public returns (uint z) {
        z = x + y;
        return z;
    }
    function subtractAgain(uint y, uint x) public returns (uint z) {
        z = y - x;
    }
}
