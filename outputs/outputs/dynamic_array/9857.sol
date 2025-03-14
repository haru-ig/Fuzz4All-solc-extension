pragma solidity ^0.8.0;
contract SemanticTest_v6b {
    uint256[] internal x = new uint256[](4294967296,4294967297);
    constructor() public {
		for (uint256 i = 0; i <= 4294967295; i++){
			x[15+i] = 15-i;
		}
		for (uint256 i = 0; i <= 4294967295; i++){
			x[15+i]++;
		}
    }
    function test() view public returns(uint256) {
        return x[4294967295];
    }
}
