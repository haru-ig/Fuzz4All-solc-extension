pragma solidity ^0.8.0;
contract Test1865I {
    uint y;
    uint x;
    function set (uint number, uint constant val) public {
        require(val > 0);
        x = val;
        y = 0;
        x = number;
        y = val;
    }
}
