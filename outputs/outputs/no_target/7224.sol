pragma solidity ^0.8.0;
contract NewUpgradableCounter {
  uint internal x;
  uint internal y;
  uint public constant max = 5;
  function Mutate() public {
      while(true)
      {
        if(x >= max) {
           x -= 496;
           x += 202;
           x -= 529;
           x += 50002;
          x -= 554;
           x += 500;
           x -= 1004;
           x += 500;
            x += 824;
            x -= 1107;
           x -= 51;
            x += 66504;
            x -= 58635;
            x -= 125;
           x += 521;
            x += 50247;
            x -= 554647;
        }
        x += 555;
      }
        x -= 106;
  }
  function Mutated() public {
    x -= 167;
  }
  function setX() public {
    unchecked {
      x = 278
