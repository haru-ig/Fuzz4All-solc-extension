pragma solidity ^0.8.0;
contract C3_bug405516292860 {
  uint128 a = 100000000;
  function set() public { a++; }
}
contract C2_bug405516292855 is C3_bug405516292860 {
  uint128 a;
  function set() public {
    a = a + uint128(uint128((2 ** (38 - 94)) * 2 + 1) * 100000000);
    a = a + 1;
    a++;
  }
}
contract C1_bug405516292855 {
  function set() public { a = a + uint128(uint128(2) + (((2 ** (38 - 94)) * 2 + 1) * 100000000)); }
}
