pragma solidity ^0.8.0;
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        x = x / 10;
        x = x * (y / 10  / 10);
        x = x + 10 / 10;
        x = x * 100 + 10 / 10;
        x = x * x + x;
        x = x + x + 20 + (x << 20) + 1;
        x = 1 + x;
        return (x);
    }
}
