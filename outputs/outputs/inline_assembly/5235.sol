pragma solidity ^0.8.0;
contract P2 {
    uint32 public iv;
    bytes32 public msg;
    constructor(uint32 _iv) public {
      iv = _iv;
      msg = msg.toEthSignedMessageHash();
      msg = msg.fromEthSignedMessageHash("0x");
    }
}


pragma solidity ^0.8.0;
contract P2 {
    bytes32 private msg;
    bytes32 public msgHex;
    constructor(string memory _msg) public{
      msg = bytes32(uint256(_msg));
    }
    function setMsg(uint256 _msg) public {
      msgHex = msg.toEthSignedMessageHash();
    }
}
