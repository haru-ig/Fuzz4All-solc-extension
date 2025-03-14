pragma solidity ^0.8.0;
contract C{
    mapping(uint => bool) public result;
    uint x = 2;
    function getResult (uint x, uint y) public view returns (uint) {
        uint x0 = (x / 10) * (y / 10);
        x0 = (x0 + 10) * 10;
        x0 = (x0 * 100) + 10;
        x0 = (x0 * x0) + x0;
        x0 = x0 + (x0 << 20) + 1;
        x0 = 1;
        result[(x0 % 10000) + 1000] = false;
        return (x);
    }
    function useResult (uint x, uint y) public {
        uint x0 = (x / 10) * (y / 10);
        uint x1 = (x0 + 100) * 100;
        x0 = (x0 + 10) * 10;
        result[(x0.div(100) * y.div(10)) + 1000] = false;
    }
}
