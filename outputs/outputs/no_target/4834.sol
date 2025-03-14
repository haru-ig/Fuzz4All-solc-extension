pragma solidity ^0.8.0;
library Address { function callSafe(address caller, bytes memory sig) public pure returns (bool){return caller.call(sig);} function callSafe(address caller, bytes memory sig, bool) public pure returns (bool){return caller.call(sig);}}
library Integer {
    function toUint8(uint n) internal pure returns (uint8) { return uint8(n); }
    function toUint16(uint n) internal pure returns (uint16) { return uint16(n); }
    function toUint32(uint n) internal pure returns (uint32) { return uint32(n); }
    function toUint64(uint n) internal pure returns (uint64) { return uint64(n); }
}
contract A1 { function m0() public pure { A1 b = new A1(); uint32 x = 1_000_000_000_000; uint32 y = 1L * 2 ** 62; uint32 z = x - y; uint160 a = 2 ** 160 - 1; uint160 w = uint160(655350000 * a / (a + x * y + z * a / w)); uint160 v; try b.m0()  { v = b.m0(); }} assert(v == 655350000); }}
