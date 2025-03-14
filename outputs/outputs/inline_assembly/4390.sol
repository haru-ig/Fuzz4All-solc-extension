pragma solidity ^0.8.0;
contract Emulator {
    function add(uint x, uint y) pure public {
        if (y == 0) throw;
        x += y;
    }
}
