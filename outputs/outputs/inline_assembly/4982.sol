pragma solidity ^0.8.0;
contract simple3 {
	uint public data_public = 0;
	contract s3_test {
		uint data_contract = 0;
		constructor() {
			data_public += 1;
			data_public += 1;
			data_public += 1;
		}
	}
}

pragma solidity ^0.8.0;
contract simple4 {
	uint public data_public = 0;
	contract s4_test {
		uint data_contract = 0;
		constructor() {
			data_public += 1;
			data_public += 1;
			data_public += 1;
		}
	}
}
