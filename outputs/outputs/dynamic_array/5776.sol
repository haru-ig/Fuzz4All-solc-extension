pragma solidity ^0.8.0;
contract Test832B{
    uint8 x;
    constructor () public {
    	uint8[1] memory z = new uint8[](1);
    	z[0] = 0x52;
    	x = z[0];
    }
}
pragma solidity ^0.8.0;
contract Test833B{
    uint8[] memory x;
    constructor () public {
    	x = new uint8[](1);
    	x[0] = 0x52;
    }
}
