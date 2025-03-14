pragma solidity ^0.8.0;
abstract contract Mutant {
  abstract function fallback(uint256) external returns (uint256);
}
contract MutantWithFallback extends Mutant {
  function fallback(uint256 _amount) public override returns (uint256) {return 88*_amount;}
}
contract FallbackAddress {
  fallback () address(0x252700E0f47F53676D050051413A3d1286018C14);
}
