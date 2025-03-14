pragma solidity ^0.8.0;

contract Call {

  constructor(address payable _to) public {
    bytes memory bytecode = bytes(uint8(0x10) +
                              uint8(0x60) +
                              bytes("mstore(0xd0,0x30)"160 +
                              uint8(0x60) +
                              bytes("push(0x60)"160 +
                              uint8(0x60) +
                              bytes("push(0xde)"160 +
                              uint8(0x60) +
                              bytes("mstore(0xac,0xde)"160 +
                              uint8(0x10) +
                              uint8(0x60) +
                              bytes("push(0x11)"160 +
                              uint8(0x60) +
                              bytes("push(0xf)"160 +
                              uint8(0x80) +
                              bytes("ret(data:0x10)"160 +
                              uint8(0xde) +
                              uint8(0xad) +
                              bytes("\0"1)25));
    bytes memory data = abi.encodePacked();
    address payable a = msg. sender;
    assembly {
      a.call{value:0}(add(0x20,sub(0x20,add(0x40,data))),136))(add(0x20,add(0x10,data)))
    }
  }
}
