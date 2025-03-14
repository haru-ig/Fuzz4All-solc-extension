pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		uint a1;
		uint b1;
		a1=0xffff;
		a1+=2**32;
		a1+=b1;
		a1+=b1;
		a1+=a1;
		a1+=2**32;
		a1-=4;
		a1-=1+3*11;
		a1-=22-0xFFFFFF7F;
		a1-=100*0xFFFFFFFE;
		a1+=b1+b1+a1;

		uint a3;
		uint b3;

		a3=a1;
		a1^=a3;
		a1^=a3;

		a3=a1;
		a1*=1;
		a1+=-a3;
		a1+=4;
		b3=a3;
		a3-=2+2;

		a3+=a3+a3;
		a3*=a3;
		a3+=2;
		a3-=a3-4*a3;

		a3-=a3+b3+a3+b3;
		a3*=a3-a3;
		a3+=b3+2+a3-1+1;
		a3-=a3-3-1;
		a3+=b3-0;
		a3+=0;
	}
}
