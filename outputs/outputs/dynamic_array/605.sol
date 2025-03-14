pragma solidity ^0.8.0;
contract test45 {
  uint[1] internal a;
  constructor () {
    a[0] = 0;
  }
  function test() public {
    a.push(1);
  }
}
