pragma solidity ^0.8.0;
contract semantically_equivalent_program_legacycontracts080 {
  constructor () public {}
  function f() internal pure returns(address) { address a; unchecked {address sc = address(0x00000000000000000000000000000000000000000); } return a;}
  function g(address a) internal pure returns(address) { address b; unchecked {address sc = address(0x000000000000000000000000000000000000000000); } return b;}
}

pragma solidity ^0.8.0;
contract functionThatWouldThrowWithAnySemanticallyEquivalentProgram {
  constructor () public {}
  function f() internal pure returns(address) { address a; unchecked {throw; } return a;}
  function g(address a) internal pure returns(uint256) { uint256 c; unchecked {throw; } return c;}
}
