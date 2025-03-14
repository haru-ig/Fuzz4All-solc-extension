pragma solidity ^0.8.0;
contract Test2 {
	uint256[] arr;

	constructor() public {
        arr.push(uint256(1));
        arr.push(uint256(2));
	}
}

pragma solidity ^0.8.0;
contract Test3 {
	uint256[] arr;

	constructor() public {
		arr.push(uint256(1));
		arr.push(uint256(2));
	}

	function init() public {
        arr[0] = uint256(10);
	}
}
