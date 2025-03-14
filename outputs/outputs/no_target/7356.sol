pragma solidity ^0.8.0;
contract BugsABICoder{
    function toUint160(uint64 x) public pure returns (uint160) {
	return uint160(x);
    }

function toUint256(uint64 x) public pure returns (uint256) {
	return uint256(x);
    }
function toUint320(uint64 x) public pure returns (uint320) {
	return uint320(x);
    }
}
