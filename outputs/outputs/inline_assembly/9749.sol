pragma solidity ^0.8.0;
contract MutatedYulContract {
 uint internal contractCounter;
 uint constant c = 0x00;
     function multiply(uint z) public returns(uint a, uint b) {
        uint x0;
        uint x1;
        uint x2;
        a =  z;
        b = a * 2;
        x0 =  a >= a + c? a : a + c;
        x2 =  b >=  b + c? b : b + c;
        return x0 >= x1 + x2? (x0, x1) : (x0, x1, x2);
    }
}
