pragma solidity ^0.8.0;
contract m08 {
	event M8();
	mapping(uint256 => uint256) private m;
	constructor() { m[uint256(12345)] = 1;}
}

pragma solidity ^0.8.0;
contract m08 {
	event M8();
	uint256 constant private M;
	constructor() { m[M] = 1;}
}

pragma solidity ^0.8.0;
contract m08 {
	event M8();
	uint256 constant private M = 1;
	constructor() { m[M] = 1;}
}
