pragma solidity ^0.8.0;


contract MyContract {
  event LogTest(uint);

  function test() public returns(uint) {
    uint[10] memory z = new uint[](10);

    LogTest(z.length);

    return 1;
  }
}
