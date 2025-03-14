pragma solidity ^0.8.0;
interface IDoubleBytesStorageMutated {
  function setDoubleBytes(uint256, bytes2, bytes2) external;
  function doubleBytes(uint256 a, bytes2 a_, bytes2 b, bytes2 c_, bytes2d _, bytes2d v) external view returns (bytes2, bytes3, bytes4, bytes5, bytes6);
}
contract DoubleBytesMutated {
  IDoubleBytesStorageMutated contractStorage;
  uint256 val;
  event OnSetDoubleBytes(uint256 indexed param0, bytes a, bytes d);

  function doubleBytes(uint256 a, bytes a_, bytes b, bytes c_, bytesd _, bytesd v) public view returns (bytes2, bytes3, bytes4, bytes5, bytes6) {
    val = a + b;
    emit OnSetDoubleBytes(val, a, c_);
    return (a_, b, c_, c_, b);
  }

  function setDoubleBytes(uint256 a, bytes a_, bytes b) public {
    val = a+b;
    emit OnSetDoubleBytes(val, a, b);
  }
}
