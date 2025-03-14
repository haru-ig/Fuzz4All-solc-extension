pragma solidity ^0.8.0;
contract Modul{
	uint[10] public s;
	constructor(uint[10] storage s_) external {
		s[0] = s_;
		s[1] = 0;
		s[2] = 0;
		s[3] = 0;
		s[4] = 0;
		s[5] = 0;
		s[6] = 0;
		s[7] = 0;
		s[8] = 0;
		s[9] = 0;
	}
}
