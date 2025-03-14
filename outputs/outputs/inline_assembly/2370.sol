pragma solidity ^0.8.0;
interface MutatorOld {
	modifier onlyBy {
		function mutatorOnlyBy(address caller) external view returns (bool);
	}
	function setA(uint256 value) external onlyBy {
		uint1 = value;
	}
	function setB(uint256 value) external onlyBy {
		uint2 = value;
	}
}
