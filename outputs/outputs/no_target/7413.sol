pragma solidity ^0.8.0;
contract Test
{
  address public constant constant1;
  address public constant constant2;
  uint256 public constant constant3;
  constructor() public
  {
    uint256 param;
    assembly {
      param := 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      constant1 := mload(0x20)
      mstore(0x20, param)
      constant2 := mload(0x20)
      mstore(0x20, param)
      constant3 := mload(0x20)
      mstore(0x20, param)
    }
  }
  function test1(address param) public {
    require(param==constant1);
  }
  function test2(address param) public {
    require(param==constant2);
  }
  function test3(address param) public {
    require(param==constant3);
  }
}
