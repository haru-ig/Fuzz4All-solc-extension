pragma solidity ^0.8.0;
contract originalC_v2 {
  function f(uint256 a) public pure returns (uint256) {
     if( a > 1) {
        uint modded_v2 = uint256((a%2) ^ (18446744073709551615u >> 24));
        return 2 % 2;
        }  else
        return 1;
  }
}
contract c1 {
  function f() public returns (uint256) {
    return f(1);
  }
  function f(uint256 x) public returns (uint256) {
    return originalC_v2.f(x);
  }
}
