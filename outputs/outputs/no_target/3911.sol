pragma solidity ^0.8.0;
contract B {
     uint x;
     constructor () public {
         x = 0x7FFFFFFFFFFFFFFF;
         uint _x = x;
         unchecked {
             uint _y = 1;
             x /= _y;
         }
     }
 }
contract B {
     uint x;
     constructor () public {
         x = 0x7FFFFFFFFFFFFFFF;
         uint _x = x;
         uint _y = 1;
         uint _z = x!= 0;
         x /= _y;
     }
 }
contract B {
     uint x;
     constructor () public {
         x = 0x7FFFFFFFFFFFFFFF;
         uint _x = x;
         uint _y = 1;
         uint _z = x!= 0;
         uint _u = x && _z;
         uint _v = x || _z;
         x = (!_u || _v);
    }
 }

contract B {
     uint x;
     constructor () public {
         x = 0x7FFFFFFFFFFFFFFF;
         uint _x = x;
         uint _y = 1;
         uint _z = x > 0;
         x /= _y;
     }
 }
