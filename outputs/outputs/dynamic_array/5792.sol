pragma solidity ^0.8.0;
contract Test833C{
    uint8 x;
    constructor () public {
    	uint8[] memory z = new uint8[](2);
    	uint8[] memory w;
    	w = z;
    	x = w.length;
    	x = z.length;
    }
}
