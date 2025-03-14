pragma solidity ^0.8.0;
contract C{
    uint x = 2;
    function getResult(uint x, uint y) public view returns (uint) {
        uint x0 = x * y;
        uint w = x0 - x0;
        w = w - w;
        x0 = (x0 * 10) + x;
        x0 = x0 + x0;
        x0 = x0 + x0 + (x0 + x0) + x;
        return (x0);
    }
}
