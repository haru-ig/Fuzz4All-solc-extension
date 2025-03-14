pragma solidity ^0.8.0;
contract Convert {
	uint16 x = 42; uint16 y = 217; uint16 z = 4096; uint16 a = 13; uint16 b = 34;
	uint256 w;
	uint8 x2; uint8 y2; uint8 w2; uint8 z2;
	constructor() {
		w = Convert.u16ToU32(x);
		w = uint32(42);
		w2 = uint8(42);
		w2 = uint8(Convert.u16ToU32(42));
		x2 = uint8(Convert.u32ToU16(Convert.u16ToU32(y)));
		a = 13;
	}
	uint16 Convert.u16ToU32(uint16 x) private pure returns (uint32) {
		require(x < 2**16, "Overflows"); return (uint32(x));
	}
	uint16 Convert.u8ToU16(uint8 x) private pure returns (uint16) {
		require(x < 2**8, "Overflows"); return (uint16(x));
	}
	uint8 Convert.u8ToU32(uint8 x) private pure returns (uint32) {
		require(x < 2**32, "Overflows"); return (uint32(x));
	}
	uint256 Convert.u8ToU256(uint8 x) private pure returns (uint256) {
		require(x < 2**256, "Overflows"); return (uint256(x));
	}
	uint256 Convert.u16ToU256(uint16 x) private pure returns (uint256) {
		return (uint256(uint8(x)));
	}
}


/* Please create a short program which uses new Solidity features in a complex way.

In this game your turn:

After each roll you have to decide if you want to do the  next
