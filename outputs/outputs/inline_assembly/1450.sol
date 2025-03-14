pragma solidity ^0.8.0;
contract Mutant10u3
{
  struct Rectangle
  {
    uint256 a;
    mapping (bytes32 => uint256) b;
  }
  function set(bytes32 key, uint256 value) public
    {
        b[key] = value;
    }
  function get(bytes32 key) public view
    returns(uint256)
    {
        return b[key];
    }
}
contract Mutant10t
{
  struct Rectangle
  {
    uint128 a;
    mapping (bytes32 => uint128) b;
  }
  function set(bytes32 key, uint128 value) public
    {
        b[key] = value;
    }
  function get(bytes32 key) public view
    returns(uint128)
    {
        return b[key];
    }
}
interface I
{
  function get(bytes32) public;
}
contract Gen10t3
{
  function set(bytes32 key, uint256 value) public
    {
      b[key] = value;
    }
  function get(bytes32 key) public view
    returns(uint256)
    {
      return b[key];
    }
}
contract Gen10t4
{
  constructor()
  {
    b["abc"] = 1;
  }
  mapping(address=>bool) public whitelist;
  mapping(bytes32=>bool) public whitelistBytes;
  function isWhitelisted(address adr) returns(bool) {
      return (whitelist[adr]);
  }
  function set(address to) public { whitelist[to] = true;  }
  function get(address to) public view returns(bool) {
    return (whitelist[to]);
  }
  function setBytes(address to, bytes32 key) public {
    whitelistBytes[adrToBytes32(to, key)] = true;
  }
  function getBytes(address to, bytes32 key) public view returns(bool) {
    return (whitelistBytes[adrToBytes32(to, key)]);
  }
  function addAddress(bytes32 key, address to) public view returns(bool) {
    return (whitelist[to]);
  }
  function addAddressBytes(bytes32 key, address to) public view returns(bool) {
    return (whitelistBytes[toBytes32(to
