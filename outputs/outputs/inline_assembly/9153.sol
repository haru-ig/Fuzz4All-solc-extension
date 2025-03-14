pragma solidity ^0.8.0;
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        x = x > 100? x * 100 + 10 / 10: 1 + x;
        return (x);
    }
}
