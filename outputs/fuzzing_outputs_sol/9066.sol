pragma solidity ^0.8.0;
contract Caller {
  function badCall(uint i, uint j) pure public {

    bytes32 addr = 0x1111111111110000000000000000000000000000000000000000000000000000;
    uint x = uint8(uint64(addr));
    assert(x == 0);
    bytes memory buf = abi.encode(i, j);
    assembly {
        let r := calldatacopy(0, 0, calldatasize())
        sstore(0, add(buf, 0x20))
        sstore(0, add(x, 0x20))
    }
  }
  receive() payable {}
  receive() {
    bytes memory buf = new bytes(1024);
    assembly {
        let r := calldatacopy(0, 0, calldatasize())
        sstore(0, add(buf, 0x20))
    }
  }
}
