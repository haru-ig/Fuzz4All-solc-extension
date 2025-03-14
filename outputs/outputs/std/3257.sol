pragma solidity ^0.8.0;
contract Array{
  bool internal testBool;
  function f()
    internal
    returns (uint8)
  {
    uint[] a = new uint[](10);
    testBool = true;
    require(a.length == 10,"Array has wrong length");
    testBool = false;
}
  function g()
    internal
    returns (uint8)
  {
    uint[][testBool] memory a;
    require(a[0].length == 0,"Array has wrong length");
    testBool = false;
}

}
