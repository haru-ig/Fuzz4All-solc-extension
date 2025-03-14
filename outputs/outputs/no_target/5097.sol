pragma solidity ^0.8.0;
contract C42_bug446412592398 {
  event A(uint a);
  function f() public { emit A(uint88(-1)); }
}

pragma solidity ^0.8.0;
contract C42_bug457796570749 {
  function f() one { return 0; } }

contract C42_bug463897317680 { function f() four {}; struct S {}
contract C42_bug470717867723 { }
contract C42_bug472533049679 {
  uint public foo;
  function g() public {
    assembly {
      foo := 0

    }
  }
  function h() public {
    foo = 16666

  }
  function i() public {
    foo += 42

  }
}


pragma solidity ^0.8.1;
interface S {}


contract C46_bug702188234365 {
  function f() internal pure returns(S memory) { emit S(); return S(); }
  function h() public pure returns(uint) { return uint(uint8(uint8(uint88(uint256(uint64(uint(uint256(uint(uint160(bytes1(bytes(bytes8(bytes3(bytes2(bytes4(bytes5(uint512(uint256(uint128(uint32(uint80(uint64(uint512(uint128(uint32(uint80(uint64(uint512(uint128(uint32(uint88(uint160(uint88)))));
