pragma solidity ^0.8.0;
contract Array{
  uint8 myNum;
  function push(uint8 x) external {
    myNum = x;
  }
  function pop() external {
    myNum /= 10;
  }

}
