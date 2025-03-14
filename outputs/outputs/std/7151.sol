pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint x;
	uint y;
	constructor() public {
		x=0x010a;
		y=0x999b;
	}
	function test() public pure {
		uint z;
		z=x;
		x=y;
		y=z;
	}
}










pragma solidity ^0.8.0;
contract BitwiseXOR {
	uint[] memory array;
	constructor() public {
		array[0]=255;
		array[1]=255;
		array[2]=129;
		array[3]=255;
	}
	function test() public pure {
		uint z;
		z=array.length;
		array[1]=384;
		z=array.length;
		array.length++;
		z=array.length;
		z=array[1];
		z=array.length;
		array[array.length-1]=x;
		array.length=5;
		z=array.length;
	}
}
