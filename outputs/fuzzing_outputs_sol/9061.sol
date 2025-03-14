pragma solidity ^0.8.0;
contract Fallback {
  function badCall(uint i, uint j) pure public returns (bytes memory) {
    bool cond;
    bytes memory result;
    uint addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    bool isEqual = i == x;
    bool isLessThan = x <= j;
    cond = isLessThan || isEqual;
    if (cond) {
      j = j + 1;
    }
    result = abi.encode(i, j);
    return result;
  }
}
contract Caller {
  function sendEther() public payable returns (bytes memory) {
    Fallback c = new Fallback();
    bytes memory result = c.badCall(1, 3);
    if (!c.checkOk(result)) {
      return result;
    }
    return c.fallbackCall(1, message.data);
  }
}
