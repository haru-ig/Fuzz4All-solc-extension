pragma solidity ^0.8.0;
contract S3  {
  uint internal constant s3_internal = 0xfa5510000;
  uint public s3;
  function h(uint x) internal returns (uint128) { return s3 = s3_internal; }
}
contract S4 {
  uint internal constant s4_internal = 0xfa5510000;
  uint160 internal constant s4a_internal = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
  uint32 internal constant s4b_internal = 0xffffffff;
  uint64 internal constant s4c_internal = 0xffffffffffffffff;
  uint public s4;
  function h(uint x) internal returns (bool) { return s4; }
}
contract Ownable {
  address private _owner;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  constructor () internal {
    _owner = msg.sender;
    emit OwnershipTransferred(address(0), _owner);
  }
  modifier onlyOwner() {
    require(isOwner());
    _;
  }
  function isOwner() public view virtual returns (bool) { return msg.sender == _owner; }
  function renounceOwnership() public virtual onlyOwner { emit OwnershipTransferred(_owner, address(0)); _owner = address(0); }
  function transferOwnership(address newOwner) public virtual onlyOwner { emit OwnershipTransferred(_owner, newOwner); _owner = newOwner; }
  function ownAddress() public view returns (address) { return address(this); }
}
