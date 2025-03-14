pragma solidity ^0.8.0;
contract Mutant12r2 {
  uint256 constant a = 65535;
  uint256 constant b = 65535;
  uint256 constant c = 454512;
  uint256 constant d = 374042;
  function get() public pure returns (uint256)  {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    (a,b,c) = Mutant12n6(a).get();
    (a,b,c,d) = Mutant12n6(b).get();
    return c;
  }
}
