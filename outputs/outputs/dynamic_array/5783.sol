pragma solidity ^0.8.0;
contract Test832B{
    uint8 z;
    constructor () public {
        uint8[] memory zz = new uint8[](1);
        zz[0] = 0x52;
    	z = zz[0];
    }
}
