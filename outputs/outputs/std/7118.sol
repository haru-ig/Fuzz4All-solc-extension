pragma solidity ^0.8.0;
contract Mutator {
	uint b;
	function test() public {
        b ^= 77;
	}
}

pragma solidity ^0.8.0;
contract View {
	uint a;
	uint b;
	function test() public view {
        a = 3;
        b = 5;
	}
}
