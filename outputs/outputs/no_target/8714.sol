pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV022 {
    using SafeMath256 for uint256;
    mapping(uint256 => uint256) x;
    uint256 f(uint256 x) public pure {
      x[x.mod(1)] += x[x.mod(2)];
      if (x[x.mod(1)]!= x[x.mod(2)] * 2) {
        x[x.mod(1)] -= x[x.mod(2)] * x[(x.mod(1) + 1) / 2];
      }
      return x[x.mod(1)] + x[x.mod(1)] * x[(x.mod(2) + 1) / 2] + 2 + x[x.mod(1)];
    }
}
