pragma solidity ^0.8.0;

contract MyContract {
   function test(uint x) public pure {
      x %= 3_238_988;
      x *= 2_193_515;
      x = 1 / 3 - x;
      x = mod(x, 50);
   }
}
