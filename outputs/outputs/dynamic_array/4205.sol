pragma solidity ^0.8.0;
contract G {
    uint256[4] memory x;
    uint p;
	constructor(uint p, uint[] memory input) public {
         uint256[4] memory prev = x;
         x = input;
         p = p;
         prev[3] = prev[2];
         prev[2] = prev[1];
         prev[2] = input[0];
		prev[1] = prev[0];
		prev[0] = input[0];
		prev[1] = arg();
	}
	function arg() public pure {
	}
}
