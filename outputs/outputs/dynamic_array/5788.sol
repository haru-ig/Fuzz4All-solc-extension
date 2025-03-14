pragma solidity ^0.8.0;
contract Test833B{
    uint8[10] memory z = new uint8[](10);
    constructor () public {
    	uint8[10] memory w;
    	w = z;
    	x = z[0];
    }
}
