pragma solidity ^0.8.0;
contract Test832B{
    uint8 x;
    constructor () public {
    	uint8[4] memory z = new uint8[](3);
    	z[0] = 0x52;
    	z[1] = 0x52;
    	x = z[1];
    }
}
