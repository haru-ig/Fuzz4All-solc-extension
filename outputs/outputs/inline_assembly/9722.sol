pragma solidity ^0.8.0;
uint constant c = 0x00;
    contract SemanticYul {
 uint internal contractCounter;
 uint constant x = 0x00;
 uint constant z = 0x00;

    function multiply(uint z) public pure returns (uint) {
        uint x = z * 2;
        if(z == x + c || (z > x && z > c) && z >= z) {
            return x + c;
        } else {
            return x >= c? x: x + c;
        }
    }
}
