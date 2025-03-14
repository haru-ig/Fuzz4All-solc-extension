pragma solidity ^0.8.0;
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        uint x = (x / 10) * (y / 10) + 10;
        x = (x + 10) * 10;
        x = (x * 100) + 10;
        x = (x * x) + x;
        x = x + (x << 20);
        x = 0;
        return (x);
    }
}
