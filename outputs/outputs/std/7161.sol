pragma solidity ^0.8.0;
contract Shorthand {
	function test() public pure {
		byte memory b;
		uint8 a;
		uint b;
		a=0xff;
		b=0xff;
		b/=a;
		b*=a;
		b++=a;
		b+=a;
		b--=a;
		b%=a;
		b^=a;
		b&=a;
		b|=a;
		b<<=a;
		b>>=a;
		b<<>=a;
		b>>>=a;
	}
}
