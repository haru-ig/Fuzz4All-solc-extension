pragma solidity ^0.8.0;
contract Mutant10u3
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256) b;
  }
}
contract Mutant10u4
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256) b;
  }
}
contract Mutant8u
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256) b;
  }
}
contract Mutant20u
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128) b;
  }
}
contract Mutant10u6
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128) b;
  }
}
contract Mutant10u7
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256) b;
  }
  inline assembly
  {
	  mstore0(0x00, x31)
	  mstore1(0x20, mload1(0x00))
	  mstore(0x40, mload(0x00))
  }
}
contract Mutant20u4
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256) b;
  }
  inline assembly
  {
	  mstore0(0x40, x31)
	  mstore1(0x50, mload1(0x40))
	  mstore(0x60, mload(0x40))
  }
}

pragma solidity ^0.8.0;
contract Gen10u12
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128) b;
  }
}
contract Gen10u1
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128) b;
  }
}
contract Gen10u2
{
  struct Rectangle
  {
    uint
