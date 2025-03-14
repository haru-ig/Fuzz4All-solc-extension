pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 0x00;
    function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x < 120) {
            return c * 0xd0 + x*c;
        } else {
            return x* c - 0x20;
        }
    }
}
