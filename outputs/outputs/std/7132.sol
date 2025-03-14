pragma solidity ^0.8.0;
contract BitwiseXOR2 {
	function test() public pure {
		uint temp = 0;
		if(a > b)
			temp = a^b;
		else
			temp = b^a;
	}
}

pragma solidity ^0.8.0;
contract BitwiseXOR3 {
	 function test2() public pure {
		 uint temp = 0;
		 if(a >= b)
		 temp = a^b;
		 else
		 temp = b^a;
	 }

	 function test() public pure {
		 uint temp = 0;
		 if(a >= b)
		 temp = a^b;
		 else if(b >= a)
		 temp = a^b;
		 else  temp = a^b;
	 }
}
