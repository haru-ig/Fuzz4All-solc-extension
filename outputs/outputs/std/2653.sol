pragma solidity ^0.8.0;
contract Mutate {
  uint162 myuint;
  uint162[2] b;
  function mutationfunc() public {
    myuint = 8;
    b[0] = uint162(2);
    b[1] = myuint;
  }
}
