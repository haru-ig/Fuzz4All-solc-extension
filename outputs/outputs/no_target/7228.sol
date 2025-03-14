pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint internal y;
    uint public constant max = 5;
  function Mutate() public {
     while(true) {
        if(x >= max) {
          x -= 12 - 14;
         x -= 17 + 20;
           x += 42 - 13;
           x += -20 +  7;
          unchecked {
            x = x - x + 400;
           x = x * x % x;
           x = x + x +  328;
          }
           x = x + 12 - 6;
          x = x - x % x + 0;
           x += -20 + 29;
          x -= 20 -  7;
          x += x + 61 + 339;
        }
      x >>=  14;
      x <<=  29;
      x >>=  4;
      x >>= 12;
    }
    return;
    }
    function Mutated() public {
        x += y;
      }
    function setX() public {
      unchecked {
        x = y;
