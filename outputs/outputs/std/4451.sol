pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		uint32 i;
		uint8 i8;
		uint16 i16;
		uint32 i32;
		uint64 i64;
		int i8_;
		int i16_;
		int i32_;
		int i64_;
		uint8 s8;
		uint16 s16;
		uint32 s32;
		uint64 s64;
		int s8_;
		int s16_;
		int s32_;
		int s64_;
		}
	MyStruct s;
	event LogA(address source);
	function f() public {
		s.arrayAddress = address(0);
		s.i = 0;
		s.i8 = 0;
		s.i16 = 0;
		s.i32 = 0;
		s.i64 = 0;
		s.i8_ = 0;
		s.i16_ = 0;
		s.i32_ = 0;
		s.i64_ = 0;
		s.s8 = 0;
		s.s16 = 0;
		s.s32 = 0;
		s.s64 = 0;
		s.s8_ = 0;
		s.s16_ = 0;
		s.s32_ = 0;
		s.s64_ = 0;
		emit LogA(s.arrayAddress);
		s.arrayAddress;
		s.i;
		s.i8;
		s.i16;
		s.i32;
		s.i64;
		s.i8_;
		s.i16_;
		s.i32_;
		s.i64_;
		s.s8;
		s.s16;
		s.s32;
		s.s64;
		s.s8_;
		s.s16_;
		s.s32_;
		s.s64_;
		}
	}

pragma solidity ^0.8.0;
pragma reverts;
contract MyContract
{
	uint32 c;
	function f() public {
		bzzz;
	}
	}
pragma solidity ^0.8.0;
pragma reverts;
contract MyContract
{
	uint32 c;
