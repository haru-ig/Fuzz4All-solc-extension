pragma solidity ^0.8.0;
contract SemanticYulContract {
    uint internal contractCounter;
    uint constant c = 0x02;
    function subtract(uint z) public pure returns (uint) {
        uint x = z / 60;
        if(x > 15) {
            return x* c - 0x20;
        } else {
            return x* c - 0xD0;
        }
    }
}
