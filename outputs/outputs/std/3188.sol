pragma solidity ^0.8.0;

contract Array {
  uint256 internal _length;
  mapping(uint256 => uint256) internal _map;

  modifier checkLength {
    if (_map.length > 0) {
      require(_length == _map[0]);
    }
    _;
  }

  function setBytes2Double(uint256 a, bytes2 a_, bytes2 b_) public
    checkLength
  {
    _map[a_] = a;
    _map[a_+bytes2(1)] = a_+bytes2(1);
    _map[a_+bytes2(2)] = a_+bytes2(2);
  }

  function getBytes2Double(uint256 a, bytes2 a_, bytes2 b) public
    checkLength
  {
    bytes2 a1 = bytes2(uint(a + 6*(a_ == bytes2(0) || a_-1 <= a_)) + 0x01);
    bytes2 b1 = bytes2(uint(a + 6*(a_ == bytes2(0) || a_-1 <= a_)) + 0x02);
    bytes2 c1 = bytes2(uint(a + 6*(a_ == bytes2(0) || a_-1 <= a_)) + 0x03);
    a1 = bytes2(uint(a + 6*(a_ == bytes2(0) || a_-1 <= a_)) + 0x01);
    b1 = bytes2(uint(a + 6*(a_ == bytes2(0) || a_-1 <= a_)) + 0x02);
    c1 = bytes2(uint(a + 6*(a_ == bytes2(0) || a_-1 <= a_)) + 0x03);
    bytes memory a2 = (bytes(_map[a_]) + bytes(_map[a_+bytes2(1)])) + bytes(_map[a_+bytes2(2)]));
    bytes memory b2 = (bytes(_map[a_+bytes2(1)]) + bytes(_map[a_+bytes2(2)])) + bytes(_map[a_+bytes2(3)]));
    bytes memory c2 = (bytes(_map[a_+bytes2(1)]) + bytes(_map[a_+bytes2(2)])) + bytes(_map[a_+bytes2(3)]));
    (a2, b2, c2) = bytes(_map[a_+bytes2(4)]) < b2? (bytes((bytes(_map[a_+bytes2(4)]) + b1), c2), b2, c2) : (bytes(c2), b2, bytes((bytes(_map[a_+bytes2(4)]) + b1), c2)));
    require((bytes(_map[a_+bytes2(1)]) + bytes(_map[a_+bytes2(2)])) < b2);
    a2 = bytes((bytes(_map[
