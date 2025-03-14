pragma solidity ^0.8.0;
contract GoodCaller {
  bytes4 constant sig = 0xf4425c8f;
  bytes32[6] memory b;
  uint8 dummy;
  function badCall(address target, uint i, bytes32[6] memory b) public returns (bool) {
    require(i == 0, "Not the first call");
    if (target.call.value(i)(""); i == 0){
      require(sig == msg.sig, "Incorrect call");
    } else {
      callDataInvalid(sig);
    }
    uint storage x = address(target).balance;
    require(x == 0, "Wrong balance");
    dummy.value(100)();
    (bytes memory b) = uint8ToBytes(b);

    uint8 h = i % 95;
    uint i_u = bytesToUint8(b);
    uint i_u2 = bytesToUint8(b);
    i_u2 += i;
    require(bytes32ToBytes(bytes(uint8ToBytes(b))), b32);
    require(0xF4425C8F00000000000000000000000000000000000000000000000000000000000000000 > bytes32(0));
    require((1 << (112 + 0x0D)) > 0, b32);
  }
  fallback() public payable {
    if (address(this).delegatecall(abi.encodeWithSignature("fallback()"))){
      require(0, "Correct delegatecall");
    }
    b[0] = msg.value;
  }
  bytes32 b32 = bytes32(keccak256(abi.encodePacked([0xAF0AF000000000000000000000000000, uint8(uint160(address(this).balance)))),[0xAF0AF000000000000000000000000000])));
  constructor() public {}
}
