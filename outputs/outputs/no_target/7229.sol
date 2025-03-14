pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint internal y;
    uint public constant max = 5;
  function Mutate() public {
     while(true) {
        if(x >= max) {
          unchecked {
            x += 1;
           x /= 9;
            x += 9;
            x += 1;
            x += 9;
           x /= 9;
            x += 9;
            x -= 10;
           x -= 1;
            x += 9;
            x += 10;
           x += 1;
            x += 2;
           x /= 9;
            x -= 10;
            x -= 9;
           x -= 1;
            x -= 10;
           x /= 9;
            x += 10;
            x -= 1;
            x /= 9;
            x -= 10;
            x += 1;
           x *= 9 + 1;
            x -= 2;
            x -= 4;
        }
      x += 1;
      }
    return;
    }
    function Mutated() public {
        x -= 1;
      }
    function
