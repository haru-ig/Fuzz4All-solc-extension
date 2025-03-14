pragma solidity ^0.8.0;
contract Mutations {
	uint[7] a;
	function set(uint64 i, uint value) public {
		a[i] = value;
	}
	function ret() public view returns (uint64 i, uint value) {
		return (5, a[5]);
	}
	function setMulti() public {
		a[4] += 1;
	}
}

pragma solidity ^0.8.0;
contract Deletions {
	uint[5] a;
	function set(uint64 i, uint value) public {
		a[i] = value;
	}
	function ret() public view returns (uint64 i, uint value) {
		i = 4;
		return (6, a[4]);
	}
	function setMulti() public {
		a[4] += 1;
	}
}

pragma solidity ^0.8.0;
contract DeletionsOld {
	uint[3] a;
	function set(uint64 i, uint value) public {
		a[i] = value;
	}
	function ret() public view returns (uint64 i, uint value) {
		i = 4;
		return (1, a[4]);
	}
	function setMulti() public {
		a[4] += 1;
	}
}
