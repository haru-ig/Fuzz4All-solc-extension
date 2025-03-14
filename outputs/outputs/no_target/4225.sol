pragma solidity ^0.8.0;
contract P13 {

  function f(address x)
    public
    pure
    returns (address)
  {
    if (x < address(this)) {
      return x;
    }
    return 0x0;
  }
}
