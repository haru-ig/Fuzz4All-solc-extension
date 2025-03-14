pragma solidity ^0.8.0;
contract L5 {
    uint constant initialx = 0x01234501;
    constructor() public {
     assembly {
       let n := 24

     initialx := initialx - 64 + n

     asm {
       let k := 0x1377

     k := k - 0x12f6

     let ret := mload(k)
     mstore(k, 256 + ret)

     }
     }
    }



    function fn() public pure {
    }
}
