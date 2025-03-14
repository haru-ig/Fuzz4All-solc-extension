pragma solidity ^0.8.0;
contract F {
  uint public value = 6;
  function get() public view returns (uint,uint[3]) {
    uint[] memory x=new uint[](1);
    x[0]=6;
    return (value,x);
  }
}
