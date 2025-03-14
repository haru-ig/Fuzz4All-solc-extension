pragma solidity ^0.8.0;
contract P11{
  uint x;
  function h() internal returns (uint256) { x = 11; return x; }
}
contract P12{
}
contract P13{
  uint x;
  uint16 internal h() internal returns (uint256) { x = 11; return x; }
}
