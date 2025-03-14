pragma solidity ^0.8.0;
contract Mutant10l3
{
  constructor (uint128 amount) public
  {
  }

  mapping (bytes32 => uint8) private table;
  mapping (bytes32 => uint) private map;
  uint128 private constant value128 = 0x1234567890ABCDEF1234567890ABCDEF01234567890ABCDEF;
  uint32 private constant value32 = 0xABCDABCDABCD;

  uint256 public constant value256 = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffc2f;

  uint16 public constant value16 = 0x1234;

  uint8 public constant value8 = 0xab;

  uint11 public constant value12 = 0xabcdef;

  modifier p1()
  {
    address self;
    assembly{
    self := mload(0x40) }
    if (self == msg.sender) return;
    else revert();
  }
  modifier p2()
  {
    address self;
    assembly{
    self := mload(0x40) }
    if (msg.sender == self) return;
    else revert();
  }

  mapping(uint128 => uint128) public values;

  function get(uint128 key) public view returns(uint128)
  {
    address self;
    assembly{
    self := mload(0x40)
    }
    return values[key];
  }

  function set(uint128 key, uint128 value) public

  {
    address self;
    assembly{
    self := mload(0x40)
    }
    values[key] = value;
  }
  function get(uint128 key) public view returns(uint)
  {
    address self;
    assembly{
    self := mload(0x40)
    }
    return map[key];
  }

  function set(uint128 key, uint value) public

  {
    address self;
    assembly{
    self := mload(0x40)
    }
    map[key] = value;
  }
  function get(uint128 key) public view returns(uint)
  {
    address self;
    assembly{
    self := mload(0x40)
    }
    return table[key];
  }

  function set(uint128 key, uint value) public

  {
    address self;
    assembly{
    self := mload(0x40)
    }
    table[key] = value;
  }
  function get() public view returns(uint)
  {
    address self;
