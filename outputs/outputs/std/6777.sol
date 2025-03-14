pragma solidity ^0.8.0;
contract Convert {
	function toAddress(string memory str) internal pure returns (address) {
		return (address(uint160(uint256(keccak256(abi.encodePacked(str)))));
	}
}
