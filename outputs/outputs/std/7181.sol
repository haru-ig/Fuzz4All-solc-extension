pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint a;
	function test() public pure {
		a=0xffff;
		a>>>=16;
		a>>>=1;
		a>>>=5;
		a>>>=63;
		a>>>=15;
		a>>>=2;
	}
}

pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		a%=b;
		a<<=3;
		a>>>=16;
		a>>>=24;
		a>>>=5;
		a>>>=2;
		a%=3;
		if(a==0)	{
			a|=-3;
		}
	}
}
