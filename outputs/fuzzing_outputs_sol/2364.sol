pragma solidity ^0.8.0;
contract MutatedCallerMutability {
  function mutatedCallWithEther() public payable {
     assembly {

      let loc := mload(0x40)
      mstore(loc, add(loc, 0x40))

      mstore(loc + 0x20, add(0xE0,0x20))

      mstore(loc + 0x40, 0x0)

      mstore(0x44, 0x0806)
      invoke(loc)

      let src := add(0x44, 0x40)
      let dest := add(0x40, 0x20)
      mstore(dest, mload(src))
      mstore(dest + 0x20, mload(src + 0x20))
      mstore(dest + 0x40, mload(src + 0x40))
      mstore(0x00, src)
      mstore(0x20, dest)
      mstore(0x40, 0x1)
      return
    }
  }
  fallback() external payable {}
}
