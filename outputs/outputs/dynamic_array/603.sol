pragma solidity ^0.8.0;
contract test44 {
  struct testStruct {
    bytes32 internalField;
  }
  function test() public {
    uint v = 20;
    testStruct memory b;
    (v, b) = ('123456709', testStruct( '12' ));
    (v, b.internalField) = ('ABCDEFFFFFFF', v.sub(2));
  }
}
