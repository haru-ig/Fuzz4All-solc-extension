pragma solidity ^0.8.0;
contract Restricted07 is Restricted {
   constructor() {
      assert(x == 0);
      assert(x__ == x);
   }
}
