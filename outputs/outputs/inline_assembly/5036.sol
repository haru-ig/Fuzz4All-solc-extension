pragma solidity ^0.8.0;
contract good {
	uint counter = 0;
	constructor() {
		counter *= 79;
		counter <<= 1;
		counter >>= 1;
		counter++ = 5;
		counter > 0;
		counter > 0x5f989670;
		counter < 0x45f89670;
		counter & 0x88888888;
		counter < 1;
		counter > 1;
		counter ^ uint(0x765431f4);
		data_public += 4 + 4 + 4;
	}
}
