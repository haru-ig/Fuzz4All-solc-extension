pragma solidity ^0.8.0;
contract OuterYulContract {
 uint constant y = 0x00000000000ff0ff00000000000000000000000000ff;
     function outerSum(uint x) public {
       uint sum = y && c > x && c * 10 > y * y? x + y * 10 + c : 0;
       assembly {
         let x := mload(0x40)
         mstore(x, sum)
       }
     }
}
```
