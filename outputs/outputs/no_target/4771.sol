pragma solidity ^0.8.0;
library LogLib {
event LogUint8 (uint8 _x);
event LogUint16 (uint16 _x);
event LogUint32 (uint32 _x);
event LogUint64 (uint64 _x);
}
contract Test {
LogLib.LogUint16 x = LogLib.LogUint16(0);
uint16 x2 = uint16(2);
address addressType;
uint addressUint;
function test1() public { x = x2; LogLib.LogUint16(1); }
}
