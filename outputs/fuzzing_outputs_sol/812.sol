pragma solidity ^0.8.0;
struct Ether {
  uint256 _value;
  mapping(uint256 => uint256) _storage;
}
contract Address {
  event Transfer(address indexed to, uint256 indexed value);
  function sendValue(address _to, uint256 _value) public {
    (bool success, bytes memory data) = _to.call{value: _value}("");
    require(success);
    emit Transfer(_to, _value);
  }
}
contract PayableFallback {
  function payableFallbackF(address _to, uint256 _value) public payable {
    uint256 _value2;
    uint256 x = 0;
    do {
    x += 1;
        uint _dout = x;
        _value2 = _value - 1;
        Ether _eth = Ether(address(msg.sender));
        _eth._storage[_value2] = _dout;
    (bool success, bytes memory data) = _to.call{value: _value2}("");
    require(success);
    } while (_value2 > 0);
    Address _addr = Address(address(msg.sender));
    _addr.sendValue(address(msg.sender), _value);
  }
}
