pragma solidity ^0.8.0;

bytes32 hash(uint x) public pure returns (bytes32) {
    bytes32 b = keccak256(abi.encode(test, x));
    testHash = b;
    return b;
}

asm {
    let x := 0x42
    let result := hash(x)
    log("Result: {result}")
}
  Result: 0x792c8a922b5a7be672dc88c9f55af250862ea5b3494852be069f35cdeda6c9c8
