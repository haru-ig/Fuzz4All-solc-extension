pragma solidity ^0.8.0;
contract ExampleDynamicCalldata {
  function emit1() public payable {
    bytes[] memory a = new bytes[](4260);
    for (uint i = 0; i < a.length; ++i) {
      a[i] = "a";
    }
  }
}
