pragma solidity ^0.8.0;
contract simpleCheck {
	uint data_public = 0;
	constructor() {
		data_public += 1;
		data_public += 123;
		data_public += 12345;
	}

	function my_func() public view returns (uint) {
		return data_public;
	}

	 modifier check {
		data_public += 1;
		data_public += 1;
		data_public -= 1;
	}

	function check_func() public view returns (uint) {
		check;
		return data_public;
	}
}
library MyLib {
	pragma solidity ^0.8.0;
	contract myLib {
		uint public data_public = 0;

		constructor() {
			data_public += 1;
			data_public += 1;
			data_public += 1;
		}

		function my_func() public view returns (uint) {
			return data_public;
		}
	}
}
