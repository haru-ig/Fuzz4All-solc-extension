pragma solidity ^0.8.0;
contract m03 {
	uint256 a;
	uint256 b;
	constructor () public {
		a=1;
		b=uint256(a)^0xFFFFFFFFD84C75059A5BDCC3FD7B1153EF10D96BEE5465FF7E48E4EEABA61D6FC81B);
	}
}
