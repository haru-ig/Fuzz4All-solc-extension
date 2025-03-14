pragma solidity ^0.8.0;
contract C{
    function getResult() public view returns (uint) {
        uint x = 20840505010;
        uint y = 0;
        uint x = x + (y << 20);
        y = y + (x << 20);
        x = x + (y << 20);
        y = y + (x << 20);
        x = x + (y << 20);
        y = y + (x << 20);
        x = x + (y << 20);
        y = y + (x << 20);
        x = x + (y << 20);
        y = y + (x << 20);
        x = x + (y << 20);
        y = y + (x << 20);
        return (x);
    }
}
