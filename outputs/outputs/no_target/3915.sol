pragma solidity ^0.8.0;
 contract C {
     uint x;
     uint256[] array;
     constructor () public {
         x = 0x7FFFFFFFFFFFFFFF;
         for(uint i=0;i<20;i++){
            array.push(uint256(0xABC));
         }
     }
 }
