pragma solidity ^0.8.0;
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        uint x = x * y + 10;
        uint x = (x * 100) + 10;
        uint x = (x * x) + x;
        return (x);
    }
}
