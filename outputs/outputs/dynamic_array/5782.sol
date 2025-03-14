pragma solidity ^0.8.0;
contract Test832B{
    uint8 x;
    constructor () public {
    	uint8[][] memory z = new uint8[6][];
    	uint8[] memory s = new uint8[](6);
    	s[0] = 6;
    	s[1] = 7;
    	uint8[] memory k = new uint8[](6);
    	k[0] = 1;
    	k[1] = 2;
    	uint8[] memory h = new uint8[](6);
      uint8[] memory l = new uint8[](6);
    	z[0][0] = s[0];
    	z[0][1] = k[0];
    	z[0][2] = h[0];
    	z[0][3] = l[0];
    	z[0][4] = l[0];
    	z[0][5] = l[0];
    	x = z[0][0];
    }
}
