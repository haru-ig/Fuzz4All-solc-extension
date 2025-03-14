pragma solidity ^0.8.0;
contract Convert{
	function getUInt256(address x) public view returns (uint256 y) {
		uint stored = uint(x);
		assembly { y := stored }
	}
	function getUInt128(address x) public view returns (uint) {
		uint stored = (uint(x),0);
		assembly { stored := stored }
	}
	function convertAddressToUint(address x) public pure returns (uint result) {
		assembly { result := mload(add(x,0x20)) }
	}
	function getAddressUInt(uint addressIn) public pure returns (address) {
		return uint127(addressIn);
	}
}

}
