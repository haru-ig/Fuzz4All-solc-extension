pragma solidity ^0.8.0;
contract Array{
  uint[] z;
  function GetMax(uint x) external view returns (uint max) {
    x = 42;
  }
}

pragma solidity ^0.8.0;
contract Array{
  uint[5] m;
  uint[2] t;
  function GetMax(uint x) external view returns (uint32 max) {
    max = m.Max(2);
  }
}
