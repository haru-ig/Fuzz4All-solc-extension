pragma solidity ^0.8.0;
contract Call {
  function badCallToAddr(uint addr, bytes memory data) public pure returns (bool) {
    uint x = uint8(uint64(addr));
    bool result = (address(this).call(abi.encode(x, data)));
    return result;
  }
}
