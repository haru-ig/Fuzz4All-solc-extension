pragma solidity ^0.8.0;
interface I {}
contract Bug05 {
	constructor(address _a) {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
}

pragma solidity ^0.8.0;
contract Bug06 {
	constructor(address _a) {
	}
	function func1() public { }
	function func2() public {
		addr[] memory v = new addr[](1);
		func1();
	}
}

pragma solidity ^0.8.0;
contract Bug07 {
	constructor(address _a, address _b) {
	}
	function func1() public { }
	function func2() public {
		uint[] memory v = new uint[](0);
	}
}

pragma solidity ^0.8.0;
contract Bug08 {
	constructor(address _a) { }
	function func1() public { }
	function func2() public {
		uint[] memory v = new uint[](0);
		func1();
	}
}
