pragma solidity ^0.8.0;
contract P6 {
  function i() pure public returns (uint) {
    return 1 + 3;
  }
}
contract P11_P6 {
  uint a;
  function() public {
    a = 0;
  }
  function i() pure public returns (uint) {
    return a + 1;
  }
  function m() pure public {
    return a;
  }
}
contract P11_P3 {
  function(uint) nonpayable external returns (uint) {
    return i();
  }
  function c() pure public returns (uint) {
    return i();
  }
}
