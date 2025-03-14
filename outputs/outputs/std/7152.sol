pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		b=0xffff;
		a^=b;
		a=b;
		a=0x0000;
		b=0x0000;
		bytes memory c = new bytes(2);
		c[0]=0x00;
		c[1]=0x80;
		c=a.mul(b);
		if(c[0]<=a&&b(b,0)<c[0]) c[0++]=(byte)255;
		a=0x0000;
		a^=bytes1(c);
		a=a>>8;
		a=~a;
		a=15;
		a=a>>(15%8);
		a=a^(a>>8);
		a=a^(a<<26);
		a=a>>16;
	}
}

pragma solidity ^0.8.0;
contract BitwiseXOR {
	function test() public pure {
		a=int32(1);
		b=int32(1, 15);
		c=a>>b;
		d=int32(1, 5);
		e=a.add(c);
		f=a.add(d);
		g=a.sub(b);
		h=a.sub(e);
		index0=a.cmp(e);
		index1=a.cmp(g);
	}
}
