pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 _h = (uint256(blockhash(30)) << 32) + uint256(tx.origin);
  }
  function x() view public returns (int) {
    uint256 _h1 = ((uint256(blockhash(30)) << 32) + uint256(tx.origin)) + 4294967295;
    uint256 _x = _h1 / 8446744073709551615 + 1;
    return 4294967295 / _x;
  }
  modifier onlyByOwner() {
    require(
      msg.sender == owner(),
      "Only owner can execute this function"
    );
    _;
  }
  modifier onlyByCaller() {
    require(
      msg.sender == msg.sigHash || msg.sigHash == 0x00000000000000000000000000000000000000000000000000000000000000,
      "Only the caller can execute this function"
    );
    _;
  }
}
