pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 0x00;
     function multiply(uint z) public pure returns (uint) {
        uint x = z * 2;
        if(z == 1 + 1) {
            return x + c;
        } else {
            return x >= c? x: x + c;
        }
    }
}
