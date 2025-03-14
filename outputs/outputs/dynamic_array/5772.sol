pragma solidity ^0.8.0;
contract Test831B{
    uint8 x;
    constructor () public {
    	uint8[] memory z = new uint8[](1);
    	z[0] = 0x52;
    	x = z[0];
    }
}
