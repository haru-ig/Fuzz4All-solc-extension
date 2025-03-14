pragma solidity ^0.8.0;
contract Bug05 {
	constructor() {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
	function func3() public {
		func2();
	}
}
import "Bug04.sol";
import "Bug05.sol";

pragma solidity ^0.8.0;
contract Bug06 {
	constructor() {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
	function func3() public {
		func2();
	}
}
import "Bug04.sol";
import "Bug05.sol";
contract Bug07 {
	constructor() {
	}
	function func1() public { }
	function func2() public {
		func1();
	}
	function func3() public {
		func2();
	}

	constructor() public { }
	function func1() public { }
	function func2() public {
		func1();
	}
}
