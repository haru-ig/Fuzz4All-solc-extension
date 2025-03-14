pragma solidity ^0.8.0;
library Convert {
	uint MAX_UINT = type(uint256).max;
	function fromInt(int x) public pure returns(uint){
		return uint(x);
	}
	function toString(uint x) public pure returns(string memory){
		if (x > 999999999 || x == 0){
			return "0";
		}
		char[] memory buf = new char[](8);
		uint y = (uint256(x) * 100000000000000000000)/MAX_UINT;
		uint z = y - (uint256(y/1000000000000000000) * 10000000000000000);
		uint i = 7;
		while(uint(z) > 99){
			z /= 100;
			i -= 1;
		}
		for (; z >= 10; z/=10){}
		buf[i] = byte(uint8(uint256(z)-48));
		for (; z > 0; z /= 10)buf[i] += byte(uint8(uint256(z)-48));
		for (; i > 0; i--)buf[i] = '0' + buf[i];
		return string(buf);
	}
}
