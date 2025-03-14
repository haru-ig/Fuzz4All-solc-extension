pragma solidity ^0.8.0;
contract A {
    function m() internal pure { }
    function o() public { }
}
contract BitwiseXOR {
	function test() public pure {
		A a;
		A b;
		a=a.m();
		a^=b;
		b=a.m();
		a=a.m();
		a^=b;
		a=a.m();
		a^=b;
	}
}

pragma solidity ^0.8.0;
contract BitwiseXOR {
	struct ArrayVar {
		uint[] buffer;
	}
	function test() public pure {
		ArrayVar memory av;
		av.buffer[0]=26;
		av.buffer[1]=-21;
		av.buffer[2]=-11;
		av.buffer[3]=10;
		av.buffer[4]= 5;
		av.buffer[5]=-35;
		av.buffer[6]=21;
		av.buffer[7]=-34;

		av.buffer[11]-=5;
		av.buffer[12]=-6;
		av.buffer[13]= 1;
		av.buffer[14]=14;
		av.buffer[15]=25;
		av.buffer[16]= 3;
		av.buffer[17]=-2;
		av.buffer[18]-=13;
		av.buffer[19]= 1;
		av.buffer[20]=11;
		av.buffer[21]= 2;
		av.buffer[22]=1;
		av.buffer[23]= 5;
		av.buffer[24]=-56;
		av.buffer[25]=28;

		uint x;
		x=av.buffer[6];
		av.buffer[6]=av.buffer[15];
		av.buffer[15]=x;
	}
}

pragma solidity ^0.8.0;
struct MemoryVar {
	uint[] myArray;
	address[] myAddressArray;
}
contract BitwiseXOR {
	function test()
		public
		pure
		memory
		{
			MemoryVar memory mv;
			uint x;

			mv.myArray[0]=26;
			mv.myArray[1]=-21;
			mv.myArray[2]=-11;
			mv.myArray[3]=1
