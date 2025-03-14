pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator7 {
	struct mutator7 {
		uint h;
		uint j;
	}
	mutator7 public data;
	constructor() {
	  data.h = 20;
	  data.j = 40;
	}
	function modify() public {
	  data.h = 10;
	  data.j *= 2;
	}
	function modify2() public {
	  data.j += 1;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator9 {
	struct mutator9 {
		uint a;
		uint b;
	}
	function func3(mutator9 memory a) public pure {
		a.a -= 40;
		a.a -= a.a % 10;
	}
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator12 {
	struct mutator12 {
		uint a;
	}
	function func2() public view {
		uint b = 10;
		a = b + (20 - a);
	}
	function func3() public pure {
	  func2;
	}
	uint a;
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
