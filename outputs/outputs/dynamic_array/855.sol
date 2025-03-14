pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint) {
  uint[] memory x=new uint[](17);
  for ( i; i < x.length; i = i + 1 ) x[i] = 12;
  x[i] = 12;
  x[i] = 12;
  x[i] = 12;
  x[i] = 127;
  x[i] = 127;
  x[i] = 127;
  x[i] = 254;
        return x[(i + 1)];
    }
}
