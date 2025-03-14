pragma solidity ^0.8.0;
contract Good implements IBad {
	uint counter = 0;
	function inlineAssembly() {
		counter += (uint256(-0x812ef5e5163a));
	}
	function data_public() view public virtual returns(uint) {
		return data_public;
	}
}
pragma experimental ABIEncoderV2;
contract ABIEncoder is Good {}
