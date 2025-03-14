pragma solidity ^0.8.0;
contract Test832D{
    uint8 x;
    constructor () public {
    	uint8[3] memory z = new uint8[](2);
    	uint8[3] memory w;
    	w = z;
    	x = z[0];
    }
}
