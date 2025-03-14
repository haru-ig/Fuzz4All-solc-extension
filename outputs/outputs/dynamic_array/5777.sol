pragma solidity ^0.8.0;
contract Test832A{
    uint8 x;
    constructor () public {
    	uint8[1] memory z = new uint8[](0x1);
    	x = z[0];
    }
}
