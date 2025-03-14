pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV2 {
    function f(uint256 x) public pure {
      uint256 t;
      (t, t) = (uint256(x), uint(uint160(x)));
      x = x + 2 * t + 3 * t + t;
    }
}
