pragma solidity ^0.8.0;
contract e {
  s memory mem;
  bytes1[] memory mem2;
  constructor() public {

    uint a = 10;
    bytes1[] memory b = new bytes1[](a);
    for (uint i = 0; i < a; i++) {
      b[i] = "This is some text " ^ uint2str(i + 1);
    }
    mem2 = b ^ mem;
    mem = f(1, "this is the message");
  }
  function f(uint n, string calldata m) public pure returns (s memory) {
    return s(n, m);
  }
}
