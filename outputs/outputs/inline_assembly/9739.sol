pragma solidity ^0.8.0;
contract MutatedYulContract {
 uint internal contractCounter;
 uint constant c = 0x00;
     function multiply(uint z) public returns (uint) {
        uint x;
        if (z == 1) {
            x =  1 + c;
        } else {
            x =  z * 2;
        }
        return x >= 1 + c? x : x + c;
    }
}
