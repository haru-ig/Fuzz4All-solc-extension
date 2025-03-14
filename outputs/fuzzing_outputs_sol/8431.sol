pragma solidity ^0.8.0;
contract Caller {
  function call() public pure {
    bytes memory e = toBytes("Hello!");
    bytes memory v = toBytes("");
    bytes memory r = toBytes("");
    bytes memory s = toBytes("");
    (address receiver, bytes memory data) = abi.decode(callcode(toHex(keccak256(abi.encodePacked(e, v, r, s)) )), bytes32(0), bytes32(0), bytes32(0)));
    uint x = (receiver == 0)? revert(0) : uint((uint128(receiver) >> 160) >> 80);
    assert(x == 5);
  }
  receive() external pure {
  }
}
