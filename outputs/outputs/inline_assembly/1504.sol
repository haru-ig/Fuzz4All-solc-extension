pragma solidity ^0.8.0;
contract Mutant1_2 {

function get() public view returns (uint256, uint256, uint256) {
  uint256 a;
  uint256 b;
  uint256 c;
  assembly {a:=a,b:=c}
  require(a < b);
  c = 0;
  return (a,b,c);
}
}

pragma solidity ^0.8.0;
contract Mutant2 n6 {

function get() public pure returns (uint256, uint256, uint256) {
  uint256 a;
  uint256 b;
  uint256 c;
  return (asm,a,b);
}
}
