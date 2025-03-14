pragma solidity ^0.8.0;
contract Convert {
  string private alphabet = "0123456789ABCDEFGHJKMNPQRSTVWXYZ";
  function stringToBytes(string memory input) public pure returns (bytes memory) {
    uint bytesLength = input.length.toUint();
    bytes memory output = new bytes(bytesLength);
    assembly {
      switch div(mod(32, sub(input, 1)),32) {
        case 0 { input := add(input, "0", 1) } return(input, bytes1(0), div(sub(bytesLength, 1)), div(mod(sub(bytesLength,1),9), 10), div(add(0x100, sub(sub(bytesLength, sub(1, div(sub(bytesLength,1),9))))) - 0x30, 16), div(add(0x1000, sub(sub(bytesLength, sub(sub(bytesLength,1),9)), 0x30))), 256)
        default {return(input, div(div(sub(bytesLength, sub(sub(1, div(bytesLength, div(9,8))))),9),10), div(0x100, 16), div(0x1000, 256)
              }
      }
    }
  }
}
