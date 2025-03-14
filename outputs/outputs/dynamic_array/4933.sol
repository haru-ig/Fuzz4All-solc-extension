pragma solidity ^0.8.0;
contract Test67a {

  struct State {
    array(uint) internal values;
  }
  uint flag;
  uint flag1;
  uint flag2;
  function bar() public {
    flag1=10;
    flag2=20;
    flag=flag1;
    state.values[1]=1;
    state.values[2]=2;
  }
}
