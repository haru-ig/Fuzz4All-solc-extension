pragma solidity ^0.8.0;
contract ContractWithFallback32 {
  function modify(address addr, uint x) public payable {
    emit Emitted(addr, x);
    uint16 y = toUint16(x);
    addr.transfer(y);
  }
  event Emitted(address addr, uint256 x);
  function toUint16 (uint a) private pure returns (uint16 b) {
    return uint16(uint8(a) + (uint8(a) >> 8));
  }
}
contract ContractWithFallback64 {
  function modify(address addr, uint x) public payable {
    emit Emitted(addr, x);
    uint256 y = toUint256(x);
    addr.transfer(y);
  }
  event Emitted(address addr, uint40 x);
  function toUint256 (uint a) private pure returns (uint256 b) {
    return uint256(uint160(a) + (uint160(a) >> 160));
  }
}
