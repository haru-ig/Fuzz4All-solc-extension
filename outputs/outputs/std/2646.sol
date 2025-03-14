pragma solidity ^0.8.0;
contract MutateConstant {
  bytes32 immutable constant _foo = '0x12345678901234567890abcdef';
  function mutationconstfunc() public {
    uint256[] memory a;
    a[0] = _foo;
    a[1] = uint256(0);
    a[2] = uint256(0);
    a[3] = uint256(128);
    a[4] = uint256(255);
    a[5] = uint256(64);
  }
}
