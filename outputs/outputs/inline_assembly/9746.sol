pragma solidity ^0.8.0;
contract MutatedYulContract {
 uint internal contractCounter;
 uint constant c = 0x00;
uint internal a = 42;
 function multiply(uint z) public returns (uint) {
        uint x;
         if (z == 1) {
            if (uint(a) == 42) {
                x =  10;
            }else {
                x =  z * 2;
            }
        } else {
            x =  z * 2;
            if (uint(a) == 42) {
                 x =  x * z;
            }
        }
        return x >= 1 + c? x : x + c;
    }
}
