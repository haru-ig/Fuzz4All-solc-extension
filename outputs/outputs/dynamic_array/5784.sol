pragma solidity ^0.8.0;
contract Test832B{
    uint8 x;
    constructor () public {
    	uint8[] memory z = new uint8[](1);
    	z[0] = 0x55;
    	uint8[] memory w;
    	w = z;
    	x = z[0];
    }
}
