pragma solidity ^0.8.0;
contract BetterVersion {
	function func1() public { }
	function func2() public {
		func1();
	}
}

pragma solidity ^0.8.0;
contract BestVersion {
	constructor(address _a) {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}
