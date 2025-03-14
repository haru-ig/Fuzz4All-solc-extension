pragma solidity ^0.8.0;
contract Test832C{
    uint8 x;
    constructor () public {
    	uint8[0] memory yy = new uint8[](1);
    	yy = "0x52";
    	x = yy;
    }
}
