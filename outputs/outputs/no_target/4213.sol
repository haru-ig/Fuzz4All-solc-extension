pragma solidity ^0.8.0;
contract P11 {
  function i() virtual public returns (uint) {
    return 1;
  }
}

pragma solidity ^0.8.0;
contract P11 {
  function i() public {
    assert(false);
  }
}

uint[] a = new uint[](2);
a.length = 2;

assembly {
  a := mload(0x40)
}
