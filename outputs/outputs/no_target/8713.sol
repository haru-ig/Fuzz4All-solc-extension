pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV01 {
     function f(uint256 x) public pure returns(uint256) {
      x += 1;
      x |= 1;
      x |= 1 << 1;
      x >>= 1;
      return x;
    }
}
