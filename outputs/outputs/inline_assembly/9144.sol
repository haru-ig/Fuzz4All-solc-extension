pragma solidity ^0.8.0;
contract C{
    uint x = 2;
    function getResult(uint x, uint y) public view returns (uint) {
        uint x0 = (x / 10) * (y / 10);
        x0 = (x0 + 10) * 10;
        x0 = (x0 * 100) + 10;
        x0 = (x0 * x0) + x0;
        x0 = x0 + (x0 << 20) + 1;
        x0 = 1;
        return (x);
    }
}
