pragma solidity ^0.8.0;
contract Bug04 {
	constructor(address _a) {
		constructorData[0] = _a;
	}
	bytes[12] private _constructorData;
	constructor(address _a) {
		_constructorData[0] = _a;
	}

	address constant address1 = address({value: 40 ether});

	function _addEther() public {
		constructorData[42] = address1;
	}
	bytes[12] public constructorData;
}
