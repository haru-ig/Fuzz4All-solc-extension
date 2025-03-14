pragma solidity ^0.8.0;
contract BytesStorage {
  IBytesStorage private m_bytesStorage;
  function setBytes(uint256 a, bytes3 a_, bytes3 b_) public {
    m_bytesStorage.doSetBytes(a, a_, b_);
  }
  function getBytes(uint256 a, bytes3 a_, bytes3 b) public view returns(uint256, uint256, bytes3, uint256, uint256, bytes3) {
    uint256 x_, y_;
    bytes memory x = m_bytesStorage.doGetBytes(a, a_, b);
    return (a, a, b, x_[0], x_[1], b);
  }
}
