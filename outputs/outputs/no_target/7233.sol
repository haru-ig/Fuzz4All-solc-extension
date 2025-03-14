pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint internal y;
    uint public constant max = 5;
  function Mutate() public {
     while(true) {
        if(x >= max) {
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
          revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
           revert();
        }
      x += 1;
    }
    return;
    }
    function Mutated() public {
        x -= 1;
      }
    function setX() public {
      unchecked {
        x += 2;
      }
    }
    function setY() internal {
      unchecked {
        y
