pragma solidity ^0.8.0;
contract Lottery {
   function addLoter(address addr) public {
       lotteries[addr]++;
   }
}
```
