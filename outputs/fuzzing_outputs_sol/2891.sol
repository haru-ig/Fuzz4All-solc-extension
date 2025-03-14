pragma solidity ^0.8.0;
contract Bar {
   fallback () external payable returns (uint32) {}
}
contract Caller {
   function fun() public {
      Foo foo;
      (bool result, ) = foo.call(abi.encodeWithSignature("'fallback() external payable returns (uint32) {}'"));
      foo.fallback.value(0)();
  }
}
contract CallFail003 is Caller {
   function fun() public {
      Bar bar;
      (bool result, ) = bar.call(abi.encodeWithSignature("'fallback() external payable returns (uint32) {}'"));
      bar.fallback.value(0)();
  }
}
