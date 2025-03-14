pragma solidity ^0.8.0;

 assembly {
 let _ = 100
 let y = mload(0x40)
 mstore(0x40, add(y, 1))
 X := 0x40
 }
