pragma solidity ^0.8.0;
contract Multiplication {
	function test() public pure {
		uint a;
		uint b;
		a=uint(0xffff);
		b=uint(2);
		uint result=uint(0x00,0xffffff);
		result=uint(result,0x0);
		a*=b;
		a>=b;
		a=uint(0xffffff);
		b=uint(2);
		result=uint(0xffffff);
		result|=(result<=result);
		result|=(result^result);
	}
}

pragma solidity ^0.8.0;
contract BitwiseAND {
	contract BitwiseAND0x8 {
		function test() public pure {
			uint a;
			uint b;
			a=a;
			a&=b;
		}
	}
}
