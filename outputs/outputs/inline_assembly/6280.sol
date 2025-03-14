pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  uint256 private z = 12;
  struct MixedContacts {
      function set(uint256 x, uint256 y) public {
          return;
      }
  }
  function main() public pure returns (bytes4 sig) {

    assembly {
      var result := extcodesize(0x5a)
      sig := extcodehash(0x41)

      asm {
        set 0x23, 0x37
      }
    }
    return sig;
  }
}
