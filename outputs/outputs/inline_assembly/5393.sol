pragma solidity ^0.8.0;
contract Qc{
    uint internal constant Init = 17;
    uint internal constant Min = 9721E15;
    uint internal constant Max = 2E18;
    uint public rBc;
    address public addrBc;
    constructor () public {
        require(uint2str(uint(address(this))) < Max,"Max address allowed");
    	rBc =  Init;
    }
    function uint2str(uint x) private pure returns (string memory) {


    	bytes memory bstr = new bytes(65);
    	for (uint j = 0; j < 64; ++j) {
    		byte char = bytes1(uint8(uint(x) * 2 ** (8 * j))));
    		if (j == 23 || j == 42) char = bytes1(byte(45));
    		bstr[j] = char;
    	}
    	return string(bstr);
    }
}
