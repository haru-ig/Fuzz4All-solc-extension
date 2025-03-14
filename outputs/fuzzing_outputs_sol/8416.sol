pragma solidity ^0.8.0;
contract FallbackExample {
  receive() external {
    assembly {
      mstore32(0x40, mload8(0x40))
      calldatacopy(0x0, 0x30, 0x30)
      let ret := call(
        0x40,
        0x0,
        add(0, 0x30),
        0x30,
        mload(0x40),
        0x00,
        0x02,
        0x30,
        0x40,
        0x00
      )

      switch ret
      case 101:
        mstore32(0x40, 0x7e)
        return
      default:
        revert(0x40, mload32(0x40))
    }
  }
}


pragma solidity >=0.8.0 <0.9.0;
