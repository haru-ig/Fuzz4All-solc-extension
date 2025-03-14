pragma solidity ^0.8.0;
contract SemanticSimilar363 {
  function setAb(bytes32 b) public pure returns (address) {
    bytes memory c = abi.encode(stringToBytes('this is a message'));
    c = abi.encodePacked(stringToBytes('this is a message'), c);
    bytes32 d = sha3(abi.encodePacked(abi.unpack(c)));
    emit Ab(a);
    a = c;
    return d;
  }
  function getAb() public pure returns (string memory) {
    uint8 k = 0;
    uint256 x = 0;
    string memory s;
    while ((k & (1 << 32 - 1))!= 0) {
      x <<= 8;
      k = k + 1;
    }
    x >>= (k + 1);
    s := stringToBytes(x.toString());
    emit Ab(a);
    a = bytes32(-1) - (bytes32(s.length) + a);
    return s;
  }
}
contract SemanticSimilar408 {
  uint16 a;
  constructor () public {
    a = 0;
  }
  function getA() public pure returns (uint128) {
    return 5;
  }
  function setA(uint16 a2) public {
    a = a2;
  }
  fallback () external {
  }
}
contract SemanticSimilar388 {
  bytes32 a;
  constructor () public {
    a = sha256('hello world');
  }
  fallback (uint16 x) external {
    uint256 x2 = x;
  }
  receive () external {
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar191 {
  bytes32 a;
  uint32 b = 1;
  constructor () public {
    a = sha256('hello world');
  }
  fallback (uint16 x) external {
    uint256 x2 = x + (b++);
  }
  receive (uint16 x) external {
  }
}
contract SemanticSimilar464 {
  bytes32 a;
  uint256 b = 1;
  constructor () public {
    a = sha256('hello world');
  }
  fallback (uint16 x) public pure {
    uint256 x2 = x + (b);
  }
  receive () external {
  }
}
contract SemanticSimilar
