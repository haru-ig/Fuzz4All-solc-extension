pragma solidity ^0.8.0;
contract testableFunctionalityForSemanticVersionZero {
		function test_newFeatureAdded() public {
			uint160(32768 * (uint2147483648.0));
			address(uint256(2147483648));
			bytes1(byte(2));
			bytes(byte(0));
			bytes(byte(1));
			bytes32(bytes32(uint64(uint128(uint32(uint256(uint64(0))) * uint64(uint256(uint64(2^255)-1)))))) * uint160(2^2048-1));
			bool7(0xffffffffffffffff + 1);
			bool16(0xffff << 16);
			bool32(0xffffffffffffffff << 2);
			bool32(bool256(1));
			bool32(true);
			bool32(false);
			bool32((uint256)true);
			bool32((uint256)false);
			bool32((int256)bool256(1));
			bool32((int256)bool256(true));
			bool32((int256)bool256(false));
			bool256((uint256)1);
			bool256((uint256)1 << (2048-1));
			bool256((bool256)bool256(1));
			bool256((bool256)bool256(true));
			bool256((bool256)bool256(false));
		}
	}
