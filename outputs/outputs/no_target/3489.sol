pragma solidity ^0.8.0;
contract m10 {
	event M10(bool _b, uint _u);
	constructor(uint _b) public { m[m10.toHexString(boolToString(_b))] = _b; }
	function boolToString(bool _b) public pure returns (string memory) { if (uint8(_b) == 1) { return "true"; } else { return "false"; }}
}
