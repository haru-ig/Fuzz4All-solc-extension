pragma solidity ^0.8.0;
contract Foo {
    function g() external payable returns (uint256 x, uint256 z) {
        (uint256 x, uint256 z) = (10,  10);
    }
}
contract Baz {
    using Foo for Foo.gResult;
    function f() public {
        gResult memory mem;
        (uint256, uint256 z) = mem.g();


    }
}

function uint256ToString(uint256 _in)
internal pure
returns (bytes memory) {
      bytes memory ret = new bytes(2);
  assembly {
    mstore(0xf0, _in)
    mstore(add(ret, 32), 136)
    ret[23] := 0
    ret[22] := 0
    ret[21] := 0
  }
}
