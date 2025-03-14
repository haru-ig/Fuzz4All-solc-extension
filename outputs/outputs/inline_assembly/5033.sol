pragma solidity ^0.8.0;
contract equal {
	uint internal counter = 0;
	uint data_public;
	constructor() {
		data_public += 5;
		data_public += 3; data_public += 1;
		data_public += 4; data_public += 3; data_public += 3;
		data_public += 1; data_public += 0;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1;
		counter += 2;
	}
}

pragma solidity ^0.8.0;
contract verygood {
	uint internal counter = 0;
	uint data_public;
	constructor() {
		data_public += 5; data_public += 3;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1;
		data_public += 0;
		data_public += 4; data_public += 3; data_public += 3; data_public += 1; counter += 2;
	}
}
