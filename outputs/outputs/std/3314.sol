pragma solidity ^0.8.0;
contract Convert {
  bool public is65535 = true;
  bytes1 public bytesVar;
  uint256 public bytesUVar;
  uint32 public bytesUVar32;
  uint64 public bytesUVar64;
  bytes10 public bytesUVar10;
  uint80 public bytesUVar80;
  string public bytesStringVar;
  bytes public bytesVar2;
  bytes10 public bytesVar10;
  bool public boolVar;
  uint256 public uint256Var;
  uint32 public uint32Var;
  uint64 public uint64Var;
  uint80 public uint80Var;
  address public addressVar;
  bytes32 public bytes32Var;
  address public zeroAddr;

  event NewBytesVar(address addr, uint256 data);
  event NewBytesStringVar(address addr, string data);
  event NewBytesUVar(address addr, uint256 data);
  event NewBytesUVar2(address addr, bytes2 data);
  event NewBytesUVar32(address addr, uint32 data);
  event NewBytesUVar64(address addr, uint64 data);
  event NewBytesUVar10(address addr, uint10 data);
  event NewBytesUVar80(address addr, uint80 data);
  event NewBytesVarFromBytes32(address addr, bytes32 data);
  event NewBoolVar(address addr, bool data);
  event NewUint256Var(address addr, uint256 data);
  event NewUint32Var(address addr, uint32 data);
  event NewUint64Var(address addr, uint64 data);
  event NewUint80Var(address addr, uint80 data);
  event NewAddressVar(address addr, address data);
  event NewBytes32Var(address addr, bytes32 data);
  event NewEmptyArray(address addr, bytes32 data);
  event NewEmptyArray2(address addr, bytes32 data);

  function call1() public pure {
    uint80 num = 32;
    bytes memory b1 = bytes("hello");
    bytes1 var1 = bytes1(bytes.eqv(b1, a1));
    bytes1 var2 = bytes1(b1[0]);
    bytes1 var3 = b1['h'];

  }
}
