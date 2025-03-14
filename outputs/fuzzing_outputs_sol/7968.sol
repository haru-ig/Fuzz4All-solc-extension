pragma solidity ^0.8.0;
contract Mod
{
  Equivalent _e;
  modifier only() {
    uint y = _e.modifiedSendEther(10, address(0x123));
    x = 10;
    _;
  }
}

pragma solidity ^0.8.0;
contract LongLived
{
  uint x;
  Equivalent _e;
  uint z = 0;
  modifier only() {
    if (false) _e.modifiedSendEther(0, address(this));
    x = 0;
    doSomething();
    x = 99;
    z = 123;
    x--;
    do somethingElse();
    z++;
  }
  function doSomething() {
    _e.modifiedSendEther(0, address(this));
    x = 0;
    do somethingElse();
    x = 99;
    z = 123;
    x--;
    do somethingElse();
    z++;
  }
  function do somethingElse() {
    x -= 1;
    doSomething();
    x++;
  }
}
